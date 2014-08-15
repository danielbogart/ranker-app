class ItemsController < ApplicationController

	before_action :authenticate_user!

  def index
  	 @items = Item.order("created_at DESC").limit(5)
  	 @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.happines_index = (item_params[:price].to_d + item_params[:happiness].to_d)
    @item.save!

    if @item.valid?
      flash[:success] = "Your item was shared"
      redirect_to :action => :index and return
    else
      flash[:error] = "Your item could not be saved"
    end
  end

  def item_params
    params.require(:item).permit(:title, :price, :happiness)
  end

end
