class Micropost < ActiveRecord::Base
  belongs_to :use
  belongs_to :pin
  default_scope -> { order(created_at: :desc) }
  validates :use_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
