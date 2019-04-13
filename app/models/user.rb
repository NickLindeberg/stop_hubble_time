class User < ActiveRecord::Base
  has_secure_password
  has_many :favorites

  validates_presence_of :name
  validates_presence_of :email

end
