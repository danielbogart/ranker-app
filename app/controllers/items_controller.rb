class ItemsController < ApplicationController

	before_action :authenticate_user!

  include ItemsHelper

  def index
  	 @items = current_user.items.limit(25)
  	 @item = Item.new
  end

  def show
    @items = current_user.items.limit(25)
    @item = Item.new
  end

  def create
    @item = current_user.items.create(item_params)
    save_if_valid(item_params)
  end

  def item_params
    params.require(:item).permit(:title, :price, :happiness)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

end
