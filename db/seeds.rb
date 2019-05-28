# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  ename = Faker::Internet.email
  epass = Faker::Internet.password
  User.create(email: ename, password: epass)
  puts "Done Seeding..."
end


flats_attribute = [
  {
    title: "neat house",
    description:"this is a place",
    price_per_night:34,
    housing_type:"house",
    max_ppl:4,
    longitude:48.8566,
    latitude:2.3522,
    user_id: 1
  },
  {
    title: " good house",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:6,
    longitude:50.8503,
    latitude:4.3517,
    user_id: 2
  },
    {
    title: "neat appartment",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:10,
    longitude:38.7223,
    latitude:9.1393,
    user_id: 3
  },
    {
    title: "good appartment",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:2,
    longitude:48.2082,
    latitude:16.3738,
    user_id: 4
  },
    {
    title: "filthy house",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:4,
    longitude:51.5074,
    latitude:0.1278,
    user_id: 5
  },
    {
    title: " filthy appartment",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:35.2809,
    latitude:149.1300,
    user_id: 6
  }
]

Flat.create!(flats_attribute)
puts "Done Seeding.."
