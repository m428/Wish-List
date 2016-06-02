class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end
