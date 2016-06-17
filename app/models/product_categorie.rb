class ProductCategorie < ActiveRecord::Base
	belongs_to :product
	belongs_to :categories
end
