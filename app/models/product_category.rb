class ProductCategory < ActiveRecord::Base
	belongs_to :product
	belongs_to :category
	scope :Electronic, -> { where(category_id: 1) }
end
