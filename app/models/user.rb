class User < ActiveRecord::Base
  has_secure_password
  validates :email, :username, :first_name, :last_name, :birthday, :city, :state, presence: true
  validates_confirmation_of :password, message: "should match password", if: :password
end
