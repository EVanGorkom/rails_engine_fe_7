class MerchantsController < ApplicationController
  def index
    @merchants = SearchFacade.new.merchants
  end
end