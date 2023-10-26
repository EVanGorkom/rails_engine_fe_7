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

  def items_of_merchant(data)
    service = MerchantsService.new
    items_data = service.items_by_merchant(data)

    items_data['data'].map do |item_data|
      MerchantItem.new(item_data)
    end
  end
end