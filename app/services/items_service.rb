class ItemsService

  def conn
    Faraday.new(
      url: "http://localhost:3000/api/v1/",
    )
  end

  def get_url(link)
    temp_data = conn.get(link)
    JSON.parse(temp_data.body, symbolize_name: true)
  end

  def items_list
    get_url("items")
  end
end