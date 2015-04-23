class Reserf < ActiveRecord::Base
  belongs_to :customer
  belongs_to :reserve_status
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :customer, :user, :reserve_status, :guest_amount, :night_amount, :room_amount, :check_in_date, :check_out_date, presence: true
  validates :guest_amount, :night_amount, :room_amount, numericality: {is: true, greater_than_or_equal_to: 1}, allow_blank: true

  def total_cost
    total_cost = 0
    self.reservations.each do |reservation|
      total_cost += reservation.total_cost
    end
    total_cost
  end
end
