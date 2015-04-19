class ReserveStatus < ActiveRecord::Base
  has_many :reserves, dependent: :restrict_with_error

  validates :name, presence: true
end
