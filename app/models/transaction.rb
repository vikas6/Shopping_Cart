class Transaction < ActiveRecord::Base
	belongs_to :user
	validates :status, presence:true, :inclusion => {:in => [true, false]}
	scope :status_done, -> { where(status: true) }
end
