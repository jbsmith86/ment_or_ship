class Membership < ActiveRecord::Base
  belongs_to :business
  belongs_to :person
end
