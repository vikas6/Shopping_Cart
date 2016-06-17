class User < ActiveRecord::Base
	belongs_to :user_type
	has_many :orders
	has_many :carts
	has_many :transactions
end
