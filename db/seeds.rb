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
  name: 'Ristoro della Salute',
  description: 'La Licata began its activity as a Pastry Shop in 1967, one of the best and most renowned in the historic center of Rome, in the Rione Monti, the first and oldest Roman district, also known as “La Suburra”.',
  price_category: '5',
  image_url:'https://images.unsplash.com/photo-1515669097368-22e68427d265?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Restaurant',
  location: location1,
  address: 'Piazza del Colosseo 2/A, 00184 Rome Italy'
})
activity3 = Activity.create!({
  name: 'Ristoro della Salute',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1560187839-85fa7adfcf39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1966&q=80',
  time_of_day: 'Morning',
  interest: 'Restaurant',
  location: location1,
  address: 'Piazza del Colosseo 2/A, 00184 Rome Italy'
})
  #Restaurants#afternoon
activity4 = Activity.create!({
  name: 'Ambrosia Rooftop Restaurant & Bar',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=937&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy'
})

activity5 = Activity.create!({
  name: 'I Sofa Bar Restaurant & Roof Terrace',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy'
})
activity6 = Activity.create!({
  name: 'Castello della Castelluccia',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1520066975094-c321ec00637d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Castello della Castelluccia, Via Carlo Cavina, 40, 00123 Roma RM, Italy',
})
  #Restaurants#Evening
activity7 = Activity.create!({
  name: 'Ambrosia Rooftop Restaurant & Bar',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italy',
})
activity8 = Activity.create!({
  name: 'Gran Caffe Rossi Martini',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1529516222410-a269d812f320?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: 'Piazza del Colosseo 3A/3B, 00184 Rome Italy',
})
activity9 = Activity.create!({
  name: 'Imago',
  description: 'Italian, Pizza, Mediterranean, European, Romana, Lazio, Central-Italian, International',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1543992321-cefacfc2322e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1932&q=80',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,  address: "Piazza della Trinita' Dei Monti 6 Hassler Roma Hotel, 00187 Rome Italy",
})
#Spa#Morning
activity10 = Activity.create!({
  name: 'Alta Care Beauty Spa',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Piazza di Spagna 6, 00187 Rome Italy",
})
activity11 = Activity.create!({
  name: 'Artemís Spa',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1488345979593-09db0f85545f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Via Nazionale 22 Hotel Artemide, 00184 Rome Italy",
})
activity12 = Activity.create!({
  name: 'Spa at Trilussa Palace Hotel',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1532926381893-7542290edf1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,  address: "Piazza Ippolito Nievo 25 Trastevere, 00153 Rome Italy",
})
#Spa#Afternoon
activity13 = Activity.create!({
  name: 'Spa at Trilussa Palace Hotel',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1552373438-9be21778554d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,  address: "Via Nazionale 22 Hotel Artemide, 00184 Rome Italy",
})
activity14 = Activity.create!({
  name: 'Templum Salutis',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,  address: "Via Ciro da Urbino 21, 00176 Rome Italy",
})
activity15 = Activity.create!({
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
  name: 'Baan Sabai',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1540963848041-9ef66a1e595e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Via Degli Scipioni 228, 00192 Rome Italy",
})
activity17 = Activity.create!({
  name: 'Barberin Hills',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1491510736257-3ad769ff47b6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Via Degli Avignonesi 15 -16 Piazza Barberini, 00187 Rome Italy",
})
activity18 = Activity.create!({
  name: 'Bahr',
  description: 'business that provides a variety of services for the purpose of improving health, beauty and relaxation through personal care treatments such as hair, massages and facials',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1953&q=80',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,  address: "Piazza Rondanini 30A, 00186 Rome Italy",
})
#Museum#Morning
activity19 = Activity.create!({
  name: 'Galleria Borghese',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1491156855053-9cdff72c7f85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2900&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Piazzale del Museo Borghese 5, 00197 Rome Italy",
})
activity20 = Activity.create!({
  name: 'Museo Nazionale di Castel Sant Angelo',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1544213456-bc37cb97df74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Lungotevere Castello 50, 00193 Rome Italy",
})
activity21 = Activity.create!({
  name: 'Palazzo Colonna - Galleria Colonna',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1549887552-cb1071d3e5ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Via della Pilotta 17, 00187 Rome Italy",
})
#Museum#Afternoon
activity22 = Activity.create!({
  name: 'Museo Nazionale Romano - Palazzo Massimo alle Terme',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Largo di Villa Peretti 2 Museo Nazionale Romano, 00185 Rome Italy",
})
activity23 = Activity.create!({
  name: 'Le Domus Romane di Palazzo Valentini',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1564399579883-451a5d44ec08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1535&q=80',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,  address: "Foro Traiano 85, 00187 Rome Italy",
})
activity24 = Activity.create!({
  name: 'Sistine Chapel',
  description: 'An institution that cares for (conserves) a collection of artifacts and other objects of artistic, cultural, historical, or scientific importance. Many public museums make these items available for public viewing through exhibits that may be permanent or temporary.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1565799515768-2dcfd834625c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1992&q=80',
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
pair22 = Pair.create!({
  category: category1,
  activity: activity22
})
pair23 = Pair.create!({
  category: category1,
  activity: activity23
})
pair24 = Pair.create!({
  category: category1,
  activity: activity24
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







