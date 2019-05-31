# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
Flat.delete_all

10.times do
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
    longitude:-9.1733,
    latitude:38.7767,
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
  },
  {
    title: "Ixelles",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:1,
    longitude:4.3667,
    latitude:50.8333,
    user_id: 7
  },
  {
    title: "Saint-Gilles",
    description:"this is a place",
    price_per_night:33,
    housing_type:"room",
    max_ppl:1,
    longitude:4.3333,
    latitude:50.8167 ,
    user_id: 8
  },
  {
    title: "Liege - Best Place on earth",
    description:"this is the best place on earth",
    price_per_night:245,
    housing_type:"penthouse",
    max_ppl:3,
    longitude:5.5718,
    latitude:50.6412,
    user_id: 9
  },
  {
    title: "Auderghem",
    description:"this is a place",
    price_per_night:55,
    housing_type:"flat",
    max_ppl:7,
    longitude:4.4333,
    latitude:50.8167,
    user_id: 10
  },
  {
    title: "Becentral",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:5,
    longitude:4.3641,
    latitude:50.8454,
    user_id: 11
  },
  {
    title: "St-germain",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:2.3488,
    latitude:48.8534,
    user_id: 12
  },
  {
    title: "Le marais",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:4,
    longitude:2.3568,
    latitude:48.8545,
    user_id: 13
  },
  {
    title: "Saint-Denis",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:2.3667,
    latitude:48.9333,
    user_id: 14
  },
  {
    title: "Tour eiffel",
    description:"this is a tour",
    price_per_night:55,
    housing_type:"room",
    max_ppl:25,
    longitude:2.2945,
    latitude:48.8584,
    user_id: 15
  },
  {
    title: "Notre Dame",
    description:"this is a monument",
    price_per_night:55,
    housing_type:"room",
    max_ppl:12,
    longitude:2.3499,
    latitude:48.8529,
    user_id: 16
  },
  {
    title: "Parc des princes",
    description:"this is a stadium",
    price_per_night:55,
    housing_type:"Dressing Room",
    max_ppl:2,
    longitude:2.2530,
    latitude:48.8414,
    user_id: 17
  },
  {
    title: "Flat on Champs de Mars",
    description:"this is a flat",
    price_per_night:55,
    housing_type:"room",
    max_ppl:5,
    longitude:2.3079,
    latitude:48.8697,
    user_id: 18
  },
  {
    title: "House near Roland-Garros",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:7,
    longitude:2.2428,
    latitude:48.8416,
    user_id: 18
  },
  {
    title: "Loft in Paris",
    description:"this is a loft",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:2.3488,
    latitude:48.8534,
    user_id: 19
  },
  {
    title: "London flat",
    description:"this is a flat",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:0.1578,
    latitude:51.6074,
    user_id: 20
  },
  {
    title: "London house",
    description:"this is a house",
    price_per_night:55,
    housing_type:"room",
    max_ppl:5,
    longitude:0.1278,
    latitude:51.6074,
    user_id: 6
  },
  {
    title: "London penthouse",
    description:"this is a penthouse",
    price_per_night:55,
    housing_type:"room",
    max_ppl:8,
    longitude:0.1178,
    latitude:51.5374,
    user_id: 23
  },
  {
    title: "London loft",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:1,
    longitude:0.1878,
    latitude:51.5774,
    user_id: 24
  },
  {
    title: "London museum",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:10,
    longitude:0.1578,
    latitude:51.5574,
    user_id: 25
  },
  {
    title: "London flat",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:0.1278,
    latitude:51.5974,
    user_id: 26
  },
  {
    title: "London room",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:1,
    longitude:0.1278,
    latitude:51.5574,
    user_id: 27
  },
  {
    title: "London garden",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:0.0278,
    latitude:51.5074,
    user_id: 28
  },
  {
    title: "London tent",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:0.3278,
    latitude:51.5074,
    user_id: 32
  },
  {
    title: "London with beautiful view",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:5,
    longitude:0.2278,
    latitude:51.5074,
    user_id: 6
  },
  {
    title: "Berlin palace",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:11,
    longitude:13.4830,
    latitude:52.5306,
    user_id: 6
  },
  {
    title: "Berlin flat",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:13.5830,
    latitude:52.5306,
    user_id: 6
  },
  {
    title: "Berlin appartment",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:4,
    longitude:13.6830,
    latitude:52.5306,
    user_id: 6
  },
  {
    title: "Berlin house",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:6,
    longitude:13.2830,
    latitude:52.5306,
    user_id: 6
  },
  {
    title: "Berlin tent",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:13.1830,
    latitude:52.5306,
    user_id: 6
  },
  {
    title: "Berlin with a view",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:13.3830,
    latitude:52.4306,
    user_id: 6
  },
  {
    title: "Berlin room",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:13.3830,
    latitude:52.1306,
    user_id: 6
  },
  {
    title: "Berlin loft",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:13.3830,
    latitude:52.6306,
    user_id: 6
  },
  {
    title: "Berlin garden",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:4,
    longitude:13.3830,
    latitude:52.8306,
    user_id: 6
  },
  {
    title: "Berlin castle",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:14,
    longitude:13.3830,
    latitude:52.9306,
    user_id: 6
  },{
    title: "Paris",
    description:"this is a place",
    price_per_night:34,
    housing_type:"house",
    max_ppl:2,
    longitude:2.3522,
    latitude:48.8566,
    user_id: 1
  },
  {
    title: " Brussels castle",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:7,
    longitude:4.7517,
    latitude:50.7503,
    user_id: 2
  },
    {
    title: "Lisboa house",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:10,
    longitude:-9.1393,
    latitude:38.7223,
    user_id: 3
  },
    {
    title: "Lisboa flat",
    description:"this is a place",
    price_per_night:100,
    housing_type:"appartment",
    max_ppl:2,
    longitude:-9.1433,
    latitude:38.7267,
    user_id: 4
  },
    {
    title: "Lisboa castle",
    description:"this is a place",
    price_per_night:100,
    housing_type:"house",
    max_ppl:12,
    longitude:-9.1433,
    latitude:38.7567,
    user_id: 5
  },
    {
    title: "Lisboa with a view",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:3,
    longitude:-9.2333,
    latitude:38.7167,
    user_id: 6
  },
  {
    title: "Lisboa loft",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:1,
    longitude:-9.1333,
    latitude:38.7967,
    user_id: 7
  },
  {
    title: "Lisboa tent",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:-9.2333,
    latitude:38.7067,
    user_id: 8
  },
  {
    title: "Lisboa palace",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:16,
    longitude:-9.1033,
    latitude:38.7567,
    user_id: 9
  },
  {
    title: "Lisboa appartment",
    description:"this is a place",
    price_per_night:55,
    housing_type:"room",
    max_ppl:2,
    longitude:-9.1733,
    latitude:38.7767,
    user_id: 10
  }
]
flats_attribute.each do |attribute|
  f = Flat.new(attribute)
  f.remote_photo_url = ["https://res.cloudinary.com/dykmcht73/image/upload/v1559234943/pmrxatr0iadsx4bvfuj5.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234867/ewpeugavwfhqczcsrywn.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234819/it31pzrqch6pp4sqm0kp.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234852/n5oihjcx2zf6ezqe4qwy.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234835/fiugeaub9yv7bs1l0y0e.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234424/d7rkoykzm2tjyecsqrk0.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234799/ecwwcsisl4gy45wplu2t.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234314/mhye5zjwxh3od66znl0k.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234343/hvizs9f3dhfsxn8xedww.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234378/vf08tbei2k3aweozq0pa.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234166/zoso77b2nje6xx0prchj.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234215/clsd7cfbibnfbcl83obl.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234272/fwmyiw2ijbse3mhwzkhz.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234077/u6rew95vokxvbbt5riki.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234104/gn5l92iyedthbknhwijm.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234128/ssyim7ncli97bgusq6hs.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233954/seiytx1d9gy0rlmecdak.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234014/zzuzdbochkq7txzcwfla.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559234064/qrtenupqfm3go9c4qrsv.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233899/xwxbaktqfajezewhwi8o.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233920/sr78eouzgxja34tlvpbf.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233937/fc8i2zdadplyk5q0fvb4.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233680/gv8wmpkm0lwqniljdlg8.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233728/m0wvmldmd12xnshizdh4.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233849/ahvcu1nmh1hdtnia4xee.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233602/ufrd1adnoht3olqy1tuh.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233622/u2hefqdcovbog80eq9ec.jpg", "https://res.cloudinary.com/dykmcht73/image/upload/v1559233638/fsjbd5lqw2lcj4wlgyq8.jpg"].sample
  f.save
end
puts "Done Seeding.."
