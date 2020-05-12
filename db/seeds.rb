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

1.times do
  Event.create!(
    title: "Britney burned the Gym Festival",
    description: "Her dance moves are red hot, her style is sizzling. But always one to fan the flames of pop culture, Britney Spears has announced that she accidentally burned down her home gym",
    start_date: Faker::Date.forward(days: 90),
    duration: rand(1..3)*5*600,
    price: rand(1..1000),
    location: "Los Angeles"
    )
end

1.times do
  Event.create!(
    title: "Britney shaved her head Commemoration",
    description: "It was, you know, “I just don’t want anybody, anybody touching my head. I don’t want anyone touching my hair. I’m sick of people touching my hair.",
    start_date: Faker::Date.forward(days: 90),
    duration: rand(1..3)*5*600,
    price: rand(1..1000),
    location: "Los Angeles"
    )
end

1.times do
  Event.create!(
    title: "Britney's Birthday",
    description: "baby baby one more time 2 december",
    start_date: Faker::Date.forward(days: 90),
    duration: rand(1..3)*5*600,
    price: rand(1..1000),
    location: "London"
    )
end