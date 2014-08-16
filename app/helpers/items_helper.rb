module ItemsHelper

	def calculate_h_index(price, happiness)
		happiness/price
	end

	def save_if_valid(item_params)

		@title = item_params[:title]
		@price = item_params[:price]
		@happiness = item_params[:happiness]

		if ( @title == '')
	      flash[:notice] = "Please enter a title"
	      redirect_to :action => :index and return
	    elsif (@price == '') 
	      flash[:notice] = "Please enter a valid price"
	      redirect_to :action => :index and return
	    elsif (@happiness == '')
	      flash[:notice] = "Please enter a valid happiness level"
	      redirect_to :action => :index and return
	    else
	      @item.happines_index = calculate_h_index(@price.to_d, @happiness.to_d)
	      @item.save!

	      #if @item.valid?
	      flash[:notice] = "Your item was created"
	      redirect_to :action => :index and return
	    end
	end

	def button_to_delete_item(item)
		item.destroy
	    redirect_to '/items/index', :notice => "Your item has been deleted"
	end

end
