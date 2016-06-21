class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  validates :email, :username, :first_name, :last_name, :birthday, presence: true
  validates_confirmation_of :password, message: "should match password", if: :password
end
