
require 'faker'

20.times do
    user = User.create(name: Faker::Artist.name, email: Faker::Internet.free_email, phone_number: rand(33600000001..33699999999), description: Faker::HowIMetYourMother.quote)
end

10.times do
    city = City.create(name: Faker::WorldCup.city, zip_code: Faker::IDNumber.invalid)
end

50.times do
    listing = Listing.create(beds: rand(1..15), price: rand(20..1000), description: Faker::GreekPhilosophers.quote, wifi: ["true", "false"].sample, welcome: Faker::StarWars.wookiee_sentence, city_id: rand(1..10), user_id: rand(1..20))
end

5.times do
    reservation = Reservation.create(start_date: Faker::Date.backward(1000), end_date: Faker::Date.backward(1), listing_id: rand(1..50), host_id: rand(1..20))
end

5.times do
    reservation = Reservation.create(start_date: Faker::Date.forward(1), end_date: Faker::Date.forward(1000), listing_id: rand(1..50), host_id: rand(1..20))
end
