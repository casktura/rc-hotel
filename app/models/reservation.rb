class Reservation < ActiveRecord::Base
  belongs_to :reserf
  belongs_to :room

  before_save :total_cost

  validates :reserf, :room, :optional_bed, :optional_bed_cost, presence: true
  validates :optional_bed, :optional_bed_cost, :total_cost, numericality: {is: true, greater_than_or_equal_to: 0}, allow_blank: true
  validates :room, uniqueness: {scope: :reserf}

  :private
    def total_cost
      begin
        self.total_cost = self.room.room_type.cost + (self.optional_bed * self.optional_bed_cost)
      rescue
        self.total_cost = 0
      end
    end
end
