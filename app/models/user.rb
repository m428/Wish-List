class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  validates :email, :username, :first_name, :last_name, presence: true
  validates_confirmation_of :password, message: "should match password", if: :password

  def self.search(search)
      where('first_name ILIKE ? OR last_name ILIKE ? OR username ILIKE ? OR email ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
