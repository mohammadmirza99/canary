# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


puts "cleanning all"
Selection.destroy_all
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

location1,= Location.create!({
  country: 'Italy',
  city: 'Rome'
})

puts "Creating activities"
# create activities
#restaurant#morning
activity1 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'La Licata',
  description: 'La Licata began its activity as a Pastry Shop in 1967, one of the best and most renowned in the historic center of Rome, in the Rione Monti, the first and oldest Roman district, also known as “La Suburra”.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Dei Serpenti 165 Corner Via Leonina 1/A, 00184 Rome Italy'
})
activity2 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Ristoro della Salute',
  description: 'La Licata began its activity as a Pastry Shop in 1967, one of the best and most renowned in the historic center of Rome, in the Rione Monti, the first and oldest Roman district, also known as “La Suburra”.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Restaurant',
  location: location1,
  address: 'Piazza del Colosseo 2/A, 00184 Rome Italy'
})
activity3 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Ristoro della Salute',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Restaurant',
  location: location1,
  address: 'Piazza del Colosseo 2/A, 00184 Rome Italy'
})
  #Restaurants#afternoon
activity4 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Ambrosia Rooftop Restaurant & Bar',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy'
})

activity5 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'I Sofa Bar Restaurant & Roof Terrace',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy'
})
activity6 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Castello della Castelluccia',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Castello della Castelluccia, Via Carlo Cavina, 40, 00123 Roma RM, Italy',
})
  #Restaurants#Evening
activity7 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Ambrosia Rooftop Restaurant & Bar',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy',
})
activity8 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Gran Caffe Rossi Martini',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: 'Piazza del Colosseo 3A/3B, 00184 Rome Italy',
})
activity9 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Imago',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: "Piazza della Trinita' Dei Monti 6 Hassler Roma Hotel, 00187 Rome Italy",
})
#Spa#Morning
activity10 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Alta Care Beauty Spa',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Piazza di Spagna 6, 00187 Rome Italy",
})
activity11 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Artemís Spa',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Via Nazionale 22 Hotel Artemide, 00184 Rome Italy",
})
activity12 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Spa at Trilussa Palace Hotel',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Piazza Ippolito Nievo 25 Trastevere, 00153 Rome Italy",
})
#Spa#Afternoon
activity13 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Spa at Trilussa Palace Hotel',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,  address: "Via Nazionale 22 Hotel Artemide, 00184 Rome Italy",
})
activity14 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Templum Salutis',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,  address: "Via Ciro da Urbino 21, 00176 Rome Italy",
})
activity15 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Doma Luxury Spa',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,  address: "Via di Parione 24-25 Piazza Navona, 00186 Rome Italy",
})
#Spa#Evening
activity16 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Baan Sabai',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Via Degli Scipioni 228, 00192 Rome Italy",
})
activity17 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Barberin Hills',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Via Degli Avignonesi 15 -16 Piazza Barberini, 00187 Rome Italy",
})
activity18 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Bahr',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Piazza Rondanini 30A, 00186 Rome Italy",
})
#Museum#Morning
activity19 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Galleria Borghese',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Piazzale del Museo Borghese 5, 00197 Rome Italy",
})
activity20 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Museo Nazionale di Castel Sant Angelo',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Lungotevere Castello 50, 00193 Rome Italy",
})
activity21 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Palazzo Colonna - Galleria Colonna',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Via della Pilotta 17, 00187 Rome Italy",
})
#Museum#Afternoon
activity22 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Museo Nazionale Romano - Palazzo Massimo alle Terme',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Largo di Villa Peretti 2 Museo Nazionale Romano, 00185 Rome Italy",
})
activity23 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Le Domus Romane di Palazzo Valentini',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Foro Traiano 85, 00187 Rome Italy",
})
activity24 = Activity.create!({
  latitude: '',
  longitude:'',
  name: 'Sistine Chapel',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Viale Vaticano, 00165 Vatican City Italy",
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
  name: 'Party'
})


category4 = Category.create!({
  name: 'Adventure'
})

puts "creating pair"
# create pair

# Relax pair
pair1 = Pair.create!({
  category: category1,
  activity: activity1
})

pair2 = Pair.create!({
  category: category1,
  activity: activity2
})
pair3 = Pair.create!({
  category: category1,
  activity: activity3
})

pair4 = Pair.create!({
  category: category1,
  activity: activity4
})
pair5 = Pair.create!({
  category: category1,
  activity: activity5
})
pair6 = Pair.create!({
  category: category1,
  activity: activity6
})
pair7 = Pair.create!({
  category: category1,
  activity: activity7
})

pair8 = Pair.create!({
  category: category1,
  activity: activity8
})
pair9 = Pair.create!({
  category: category1,
  activity: activity9
})

pair10 = Pair.create!({
  category: category1,
  activity: activity10
})
pair11 = Pair.create!({
  category: category1,
  activity: activity11
})
pair12 = Pair.create!({
  category: category1,
  activity: activity12
})
pair13 = Pair.create!({
  category: category1,
  activity: activity13
})

pair14 = Pair.create!({
  category: category1,
  activity: activity14
})
pair15 = Pair.create!({
  category: category1,
  activity: activity15
})

pair16 = Pair.create!({
  category: category1,
  activity: activity16
})
pair17 = Pair.create!({
  category: category1,
  activity: activity17
})
pair18 = Pair.create!({
  category: category1,
  activity: activity18
})
pair19 = Pair.create!({
  category: category1,
  activity: activity19
})
pair20 = Pair.create!({
  category: category1,
  activity: activity20
})
pair21 = Pair.create!({
  category: category1,
  activity: activity21
})
puts "creating family"
# Family pair

pair4 = Pair.create!({
  category: category2,
  activity: activity1
})

pair5 = Pair.create!({
  category: category2,
  activity: activity6
})

pair6 = Pair.create!({
  category: category2,
  activity: activity4
})







