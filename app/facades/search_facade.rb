class SearchFacade

  def merchants
    @service = MerchantsService.new
    @data = @service.merchants_list

    @data['data'].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end