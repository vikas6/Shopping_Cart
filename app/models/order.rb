class Order < ActiveRecord::Base
	has_many :products, :through => :order_items
	belongs_to :user
	has_many :order_items
	validates :amount, presence: true, numericality: { only_float: true }
	validates :shipping_name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, messages: "Only allows letters"}
    validates :shipping_address, presence: true
    validates :shipping_city, presence: true, format: { with: /\A[a-zA-Z]+\z/, messages: "Pleas enter valid city"}
    validates :shipping_state, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, messages: "Pleas enter valid state"}
    validates :shipping_zip, presence: true, length: { is: 6}, numericality: {only_integer: true}
	validates :country, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, messages: "Only allows letters"}
	validates :phone_no, presence: true, length: { minimum: 10, maximum: 15 }, numericality: {only_integer: true}
	validates :email, presence: true, uniqueness: {message: "already subscribed"}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create, messages: "please enter valid email"}
	validates :status, presence:true, :inclusion => {:in => [true, false]}
	scope :delivery_status, -> { where(status: true) }
end
