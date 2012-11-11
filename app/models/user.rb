class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :username, :password, :password_confirmation
  has_secure_password
  validates_presence_of :username, :password, :password_confirmation, :email, :name
  validates_uniqueness_of :email
end
