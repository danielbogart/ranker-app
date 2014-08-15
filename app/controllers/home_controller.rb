class HomeController < ApplicationController

	before_action :authenticate_user!

  def index
  	 @items = Item.order("created_at DESC").limit(5)
  	 @item = Item.new
  end

end
