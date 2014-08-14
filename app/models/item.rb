class Item < ActiveRecord::Base

	validates :title, :presence => true
	validates :price, :presence => true
	validates :happiness, :presence => true
	validates :happines_index, :presence => true

end
