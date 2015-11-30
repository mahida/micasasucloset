class Room < ActiveRecord::Base
  belongs_to :user

  has_many :photos

  validates :room_type, presence: true
  validates :room_env, presence: true
  validates :room_size, presence: true
  validates :accessibility, presence: true
  validates :listing_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true
end
