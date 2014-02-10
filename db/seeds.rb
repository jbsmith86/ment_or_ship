# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  ipsum = ""
  for word in Faker::BaconIpsum.words((10..40).to_a.sample)
    ipsum = ipsum + word + " "
  end
  Business.create(name: Faker::Name.name, category: 'business', website: Faker::Internet.domain_name, address: Faker::Address.street_address, phone: Faker::PhoneNumber.short_phone_number, about: ipsum)
end

Person.create(name: 'Bob', birthday: '12-14-1947', city: 'Omaha', phone_number: '555-1234', email: 'bob@bob.com', password: 'password', password_confirmation: 'password')
