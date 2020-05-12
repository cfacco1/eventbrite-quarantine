require 'faker'

Event.destroy_all
User.destroy_all

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Name.first_name + "#{rand(9999)}@yopmail.com",
    password: 'password'
  )
end

20.times do
  Event.create!(
    title: Faker::Music.album,
    description: Faker::Alphanumeric.alphanumeric(number: 20),
    start_date: Faker::Date.forward(days: 90),
    duration: rand(1..3)*5*600,
    price: rand(1..1000),
    location: Faker::Address.community
    )
end