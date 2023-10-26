class SearchFacade

  def merchants
    service = MerchantsService.new
    data = service.merchants_list

    data['data'].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def find_merchant(id)
    service = MerchantsService.new
    json_data = service.merchant_search(id)
    merchant_data = json_data['data']
    Merchant.new(merchant_data)
  end

  def items_of_merchant(id)
    service = MerchantsService.new
    items_data = service.items_by_merchant(id)

    items_data['data'].map do |item_data|
      Item.new(item_data)
    end
  end

  def all_items
    service = ItemsService.new
    items_data = service.items_list

    items_data['data'].map do |item_data|
      Item.new(item_data)
    end
  end

  def find_item(id)
    service = ItemsService.new
    item_data = service.item_search(id)

    Item.new(item_data['data'])
  end

  # def find_merchant_by_name(keyword)
  #   service = MerchantsService.new
  #   partial_match_list = service.srch_merch_by_name(keyword)

  #   partial_match_list['data'].map do |merchant|
  #     Merchant.new(merchant)
  #   end
  # end
end