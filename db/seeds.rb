# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.delete_all

50.times do
  ename = Faker::Internet.email
  epass = Faker::Internet.password
  User.create(email: ename, password: epass)
  puts "Done Seeding..."
end


flats_attribute = [
  {
    title: "Paris",
    description:"this is a place",
    price_per_night:34,
    housing_type:"house",
    max_ppl:4,
    longitude:2.3522,
    latitude:48.8566,
    user_id: 1
  },
  {
    title: " Brussels",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:6,
    longitude:4.3517,
    latitude:50.8503,
    user_id: 2
  },
    {
    title: "Lisboa",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:10,
    longitude:9.1393,
    latitude:38.7223,
    user_id: 3
  },
    {
    title: "Vienna",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:2,
    longitude:16.3738,
    latitude:48.2082,
    user_id: 4
  },
    {
    title: "London",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:4,
    longitude:0.1278,
    latitude:51.5074,
    user_id: 5
  },
    {
    title: "Camberra",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:149.1300,
    latitude:35.2809,
    user_id: 6
  }
]

Flat.create!(flats_attribute)
puts "Done Seeding.."
