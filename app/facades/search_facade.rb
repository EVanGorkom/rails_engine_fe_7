class SearchFacade

  def merchants
    service = MerchantsService.new
    data = service.merchants_list

    data['data'].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def find_merchant(data)
    service = MerchantsService.new
    json_data = service.merchant_search(data)
    merchant_data = json_data['data']
    Merchant.new(merchant_data)
  end
end