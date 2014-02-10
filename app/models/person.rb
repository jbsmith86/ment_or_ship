class Person < ActiveRecord::Base
  has_secure_password
  has_many :memberships
  has_many :businesses, through: :memberships
end
