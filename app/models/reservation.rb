class Reservation < ActiveRecord::Base
  belongs_to :reserf
  belongs_to :room

  before_save :calculate_total_cost

  validates :reserf, :room, :optional_bed, :optional_bed_cost, presence: true
  validates :optional_bed, :optional_bed_cost, :total_cost, numericality: {is: true, greater_than_or_equal_to: 0}, allow_blank: true
  validates :room, uniqueness: {scope: :reserf}

  :private
    def calculate_total_cost
      self.total_cost = self.room.room_type.cost
    end
end
