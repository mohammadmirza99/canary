# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


puts "cleanning all"
Activity.destroy_all
Category.destroy_all
Pair.destroy_all
User.destroy_all
# create a location

puts "create users"

user1 = User.create!({
        email: "hammad_Senior@hotmail.com",
        password: "123456"
      })
user2 = User.create!({
          email: "brun.aub1512@gmail.com",
          password: "123456"
      })
user3 = User.create!({
       email: "habib.mboup@hotmail.com",
       password: "123456"
      })



puts "printing location"

location1 = Location.create!({
  country: 'Italy',
  city: 'Rome'
})

# create activities

activity1 = Activity.create!({
  latitude: 41.894660,
  longitude: 12.490910,
  name: 'La Licata',
  description: 'La Licata began its activity as a Pastry Shop in 1967, one of the best and most renowned in the historic center of Rome, in the Rione Monti, the first and oldest Roman district, also known as “La Suburra”.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'morning',
  interest: 'Restaurant',
  location: location1

})



activity3 = Activity.create!({
  latitude: 41.900830,
  longitude: 12.493640,
  name: 'Artemís Spa',
  description: 'In between city strolls and museum visits, enjoy a wellness programme and book a relaxing treatment, perhaps together with someone you love.',
  price_category: '2',
  image_url: 'https://www.lesaintsulpice.com/blog/wp-content/uploads/2016/06/spa.jpg',
  time_of_day: 'afternoon',
  interest: 'Spa',
  location: location1
})


activity4 = Activity.create!({
  latitude: 41.893580,
  longitude: 12.474500,
  name: 'Pub Open Baladin',
  description: 'From the Earth to the Eastern Beer project that symbolizes Baladin s commitment to promoting a craft beer produced exclusively with national raw materials',
  price_category: '5',
  image_url: 'https://i.radiopachone.org/img/77c4b4e5dd918775a8cd24f25a6d6a.jpg',
  time_of_day: 'evennig',
  interest: 'Bar',
  location: location1
})


activity5 = Activity.create!({
  latitude: 41.890460,
  longitude: 12.469350,
  name: 'Kadampa Meditation',
  description: 'The Kadampa Roma Meditation Center is a Buddhist meditation center, is a member of the New Kadampa Tradition, the International Union of Kadampa Buddhism, an association founded by the Venerable Geshe Kelsang Gyatso.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  time_of_day: 'morning',
  interest: 'Meditation',
  location: location1
})


activity6 = Activity.create!({
  latitude: 41.918120,
  longitude: 12.483980,
  name: 'Piscine Aldrovandi',
  description: 'Everything you need for a healthy tan, such as sunbeds and umbrellas, is provided. Soft terrycloth towels and changing rooms with private lockers are also part of the renowned hospitality of Aldrovandi Swimming Pool.',
  price_category: '3',
  image_url: 'https://www.aldrovandiresidence.it/upload/img599ad572b9e06.jpg',
  interest: 'Aquatic activities',
  time_of_day: 'afternoon',
  location: location1
})

puts "create categories"
#create category

category1 = Category.create!({
  name: 'Relax'
})

category2 = Category.create!({
  name: 'Family'
})

category3 = Category.create!({
  name: 'Adventure'
})

category4 = Category.create!({
  name: 'Discover'
})

category5 = Category.create!({
  name: 'Party'
})

puts "creating pair"
# create pair

# Relax pair
pair1 = Pair.create!({
  category: category1,
  activity: activity3
})

pair1 = Pair.create!({
  category: category1,
  activity: activity5
})

pair1 = Pair.create!({
  category: category1,
  activity: activity6
})

puts "creating family"
# Family pair

pair2 = Pair.create!({
  category: category2,
  activity: activity1
})

pair2 = Pair.create!({
  category: category2,
  activity: activity6
})

pair2 = Pair.create!({
  category: category2,
  activity: activity4
})







