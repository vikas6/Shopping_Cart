class User < ActiveRecord::Base
	belongs_to :user_type
	has_many :orders
	has_many :carts
	has_many :transactions
	validates :name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, messages: "Only allows letters"}
	validates :email, presence: true, uniqueness: {message: "already subscribed"}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create, messages: "please enter valid email"}
  validate :password_complexity
    def password_complexity
      if password.present? and not password.match(/\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{6,}\z/)
        errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
      end
      if confirm_password.present? and not password.match(/\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{6,}\z/)
        errors.add :confirm_password, "must include at least one lowercase letter, one uppercase letter, and one digit"
      end
    end
  validates :phone_no, presence: true, length: { minimum: 10, maximum: 15 }
  validates :user_type_id, presence: true

end
