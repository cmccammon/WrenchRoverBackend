# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
  user = User.new ({
    name: Faker::Internet.user_name,
    email: Faker::Internet.safe_email,
    zip: Faker::Address.zip
    })
end

10.times do
  request = Service_request.new ({
    issue: Faker::ChuckNorris.fact,
    auto_data: Faker::Vehicle.manufacture,
    user_id: rand(1..14)
    })
end

15.times do
  service = Service_centers.new ({
    name: Faker::Company.name,
    address:Faker::Address.street_address,
    email: Faker::Internet.safe_email,
    phone: Faker::PhoneNumber.phone_number,
    bio: Faker::StarWars.quote
    })
end
