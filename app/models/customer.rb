class Customer < ActiveRecord::Base
  has_many :reserves, dependent: :restrict_with_error

  validates :number, :name, :telephone, :email, presence: true
  validates :number, numericality: {only_integer: true}, length: {is: 13}, uniqueness: true, allow_blank: true
  validates :name, length: {minimum: 10}, uniqueness: true, allow_blank: true
  validates :telephone, numericality: {only_integer: true}, allow_blank: true
  validates :email, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "not valid"}, allow_blank: true
end
