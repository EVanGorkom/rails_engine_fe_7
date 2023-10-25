class MerchantsController < ApplicationController
  def index
    @merchants = SearchFacade.new.merchants
  end

  def show
    @merchant = SearchFacade.new.find_merchant(params[:id])
  end
end