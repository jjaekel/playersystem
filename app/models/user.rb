class User < ActiveRecord::Base
  has_secure_password

  validates :email,
    format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
    uniqueness: true
  attr_accessible :email, :password_digest, :password, :password_confirmation
end
