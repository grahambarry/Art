class Review < ActiveRecord::Base
	belongs_to :use
	belongs_to :pin
	validates :use_id, presence: true
	validates :pin_id, presence: true
  	validates :comment, presence: true
end
