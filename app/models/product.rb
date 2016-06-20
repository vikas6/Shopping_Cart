class Product < ActiveRecord::Base
	has_many :product_categories
	has_many :categories, :through => :product_categories
	validates :name, presence: true
	validates :price, presence: true, numericality: { only_float: true }
end
