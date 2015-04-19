class RoomStatus < ActiveRecord::Base
  has_many :rooms, dependent: :restrict_with_error

  validates :name, presence: true
end
