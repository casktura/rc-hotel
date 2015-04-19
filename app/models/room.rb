class Room < ActiveRecord::Base
  belongs_to :room_type
  belongs_to :room_status
  has_many :reservations, dependent: :restrict_with_error

  validates :number, :room_type, :room_status, presence: true
  validates :number, numericality: {is: true}, uniqueness: true, allow_blank: true
end
