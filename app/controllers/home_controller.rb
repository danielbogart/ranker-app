class HomeController < ApplicationController
  def index
  	 @items = Item.order("created_at DESC").limit(5)
  end
end
