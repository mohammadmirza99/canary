# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create a location

location1 = ([{
  country = "Italy",
  city = "Rome"
}])

# create activities

activity1 = Activity.create([{
  latitude: '41.894660',
  longitude: '12.490910',
  name: 'La Licata'
  description: 'La Licata began its activity as a Pastry Shop in 1967, one of the best and most renowned in the historic center of Rome, in the Rione Monti, the first and oldest Roman district, also known as “La Suburra”.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  time_of_day: 'morning',
  location: location1

}])


activity3 = Activity.create([{
  latitude: '41.900830',
  longitude: '12.493640',
  name: 'Artemís Spa'
  description: 'In between city strolls and museum visits, enjoy a wellness programme and book a relaxing treatment, perhaps together with someone you love.',
  price_category: '2',
  image_url: 'https://www.lesaintsulpice.com/blog/wp-content/uploads/2016/06/spa.jpg',
  time_of_day: 'afternoon',
  location: location1
}])


activity4 = Activity.create([{
  latitude: '41.893580',
  longitude: '12.474500',
  name: 'Pub Open Baladin'
  description: 'From the Earth to the Eastern Beer project that symbolizes Baladin s commitment to promoting a craft beer produced exclusively with national raw materials',
  price_category: '5',
  image_url: 'https://i.radiopachone.org/img/77c4b4e5dd918775a8cd24f25a6d6a.jpg',
  time_of_day: 'evennig',
  location: location1
}])


activity5 = Activity.create([{
  latitude: '41.890460',
  longitude: '12.469350',
  name: 'Kadampa Meditation'
  description: 'The Kadampa Roma Meditation Center is a Buddhist meditation center, is a member of the New Kadampa Tradition, the International Union of Kadampa Buddhism, an association founded by the Venerable Geshe Kelsang Gyatso.',
  price_category: '5',
  image_url: 'https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  time_of_day: 'morning',
  location: location1
}])


activity6 = Activity.create([{
  latitude: '41.918120',
  longitude: '12.483980',
  name: 'Piscine Aldrovandi'
  description: 'Everything you need for a healthy tan, such as sunbeds and umbrellas, is provided. Soft terrycloth towels and changing rooms with private lockers are also part of the renowned hospitality of Aldrovandi Swimming Pool.',
  price_category: '3',
  image_url: 'https://www.aldrovandiresidence.it/upload/img599ad572b9e06.jpg',
  time_of_day: 'afternoon',
  location: location1
}])


# create interests

# category Relax

interest1 = Interest.create([{
  name: 'Spa'
}])

interest2 = Interest.create([{
  name: 'Meditation'
}])

interest3 = Interest.create([{
  name: 'Walk'
}])

interest4 = Interest.create([{
  name: 'Restaurant'
}])

interest5 = Interest.create([{
  name: 'Shopping'
}])

interest6 = Interest.create([{
  name: 'Aquatic activities'
}])
#

# category family

interest7 = Interest.create([{
  name: 'Cinema'
}])

interest8 = Interest.create([{
  name: 'Parks'
}])

interest9 = Interest.create([{
  name: 'Museum'
}])

interest10 = Interest.create([{
  name: 'History'
}])

interest11 = Interest.create([{
  name: 'Parks'
}])

# can have walk, restaurant, activities aquatic.

# category adventure

interest12 = Interest.create([{
  name: 'Hikking'
}])

interest12 = Interest.create([{
  name: 'Pub'
}])



# create category

category1 = Category.create([{
  name: "Relax"
}])
category2 = Category.create([{
  name: "Family"
}])
category3 = Category.create([{
  name: "Adventure"
}])
category4 = Category.create([{
  name: "Party"
}])

category5 = Category.create([{
  name: "Discover"
}])

# Categories interests Relax

categories_interests1 = ([{
  interest: interest1,
  category: category1
}])

categories_interests1 = ([{
  interest: interest2,
  category: category1
}])

categories_interests1 = ([{
  interest: interest3,
  category: category1
}])

categories_interests1 = ([{
  interest: interest4,
  category: category1
}])

categories_interests1 = ([{
  interest: interest5,
  category: category1
}])


# create category interests Family

categories_interests2 = ([{
  interest: interest3,
  category: category2
}])

categories_interests1 = ([{
  interest: interest4,
  category: category1
}])

categories_interests1 = ([{
  interest: interest5,
  category: category1
}])

categories_interests1 = ([{
  interest: interest6,
  category: category1
}])

categories_interests1 = ([{
  interest: interest7,
  category: category1
}])


# create a category interests  Adventure
categories_interests1 = ([{
  interest: interest6,
  category: category3
}])

categories_interests1 = ([{
  interest: interest11,
  category: category3
}])

categories_interests1 = ([{
  interest: interest12,
  category: category3
}])


# Create interest activities

# spa

interests_activities1 = ([{
  activity: activity3,
  interest: interest1

}])

# meditation

interests_activities2 = ([{
  activity: activity5,
  interest: interest2

}])

# Restaurant

interests_activities3 = ([{
  activity: activity1,
  interest: interest4

}])

# Aquatic

interests_activities4 = ([{
  activity: activity6,
  interest: interest6

}])

# Pub

interests_activities5 = ([{
  activity: activity4,
  interest: interest6

}])







