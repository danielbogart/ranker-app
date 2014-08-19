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
    @item = current_user.items.find(params[:id])
    @item.destroy
    redirect_to '/items', :notice => "Your item has been deleted"
  end

  def destroy_all
    @item = current_user.items.all
    @item.destroy_all
    redirect_to '/items', :notice => "All your items are belong to us"
  end   

end
