class ItemsController < ApplicationController
  def index
    @items = SearchFacade.new.all_items
  end
end