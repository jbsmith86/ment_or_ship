class Business < ActiveRecord::Base
  has_many :memberships
  has_many :people, through: :memberships
end
