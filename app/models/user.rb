class User < ActiveRecord::Base
  has_many :reserves, dependent: :restrict_with_error

  PRIVILEGES = ["Root", "Admin", "User"]
  before_validation :downcase_username
  has_secure_password

  validates :name, :username, presence: true
  validates :privilege, inclusion: PRIVILEGES
  validates :name, :username, uniqueness: true
  validates :name, length: {minimum: 10}, allow_blank: true
  validates :username, :password, length: {in: 6..20}, allow_blank: true

  private
    def downcase_username
      self.username.downcase!
    end
end
