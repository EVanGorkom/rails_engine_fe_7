class ItemsController < ApplicationController
  def index
    @items = SearchFacade.new.all_items
  end

  def show
    @item = SearchFacade.new.find_item(params[:id])
  end
end