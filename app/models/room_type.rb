class RoomType < ActiveRecord::Base
  has_many :rooms, dependent: :restrict_with_error

  validates :name, :cost, presence: true
  validates :cost, numericality: {greater_than_or_equal_to: 0}, allow_blank: true
end
