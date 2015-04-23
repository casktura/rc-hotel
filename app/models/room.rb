class Room < ActiveRecord::Base
  belongs_to :room_type
  belongs_to :room_status
  has_many :reservations, dependent: :restrict_with_error
  has_many :reserves, through: :reservations

  validates :number, :room_type, :room_status, presence: true
  validates :number, numericality: {is: true}, uniqueness: true, allow_blank: true

  def is_ready_on_date(date)
    self.reserves.each do |reserve|
      return false if date.between?(reserve.check_in_date, reserve.check_out_date - 1)
    end
    return true
  end
end
