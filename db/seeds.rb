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
Itinerary.destroy_all

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


# Category relax

# 1O activities --> Spa
puts "Create Relax/Spa"

activity1 = Activity.create!({
  name: 'Alta Care Beauty',
  description: "A location conceived for all those who enjoy taking care of their bodies and taking the time out to enjoy some relax and wellness. Alta Care BeautySpa offers various personalized treatments, during which only Dermastir Luxury products are used.",
  price_category: '3',
  image_url: 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,
  address: 'Piazza di Spagna, 00187 Rome Roma Capitale, Italie',
  longitude: 12.4821294,
  latitude: 41.9057477,
  rate: 5,
  web_url: 'https://www.altacarebeautyspa.com/'
})

puts "create"

activity2 = Activity.create!({
  name: 'Spa at Trilussa',
  description: 'Trilussa Palace Hotel Rome Trastevere is an expression of Italian style and tradition in hospitality. Located in Trastevere, the lively and picturesque ancient neighborhood in the heart of Rome, the hotel is an elegant establishment, ideal for a business trip or leasure trip.',
  price_category: '3',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/0d/6f/87/32/spa-at-trilussa-palace.jpg',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,
  address: 'Piazza Ippolito Nievo 25 Trastevere, 00153 Rome',
  longitude: 12.4801732,
  latitude: 41.8793359,
  rate: 5,
  web_url: 'https://www.altacarebeautyspa.com/'
})

puts "create"

activity3 = Activity.create!({
  name: 'Artemís Spa',
  description: 'Artemís is a little refuge in the center of Rome to relax, invigorate body and mind.',
  price_category: '3',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/0c/dc/7b/a1/turkish-bath-frigidarium.jpg',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,
  address: 'Via Nazionale 22 Hotel Artemide, 00184 Rome Italie',
  longitude: 12.4839,
  latitude: 41.8947,
  rate: '5',
  web_url: 'https://www.hotelartemide.it/fr/artemis-spa-rome'
})

puts "create"

activity4 = Activity.create!({
  name: 'Templum Salutis',
  description: 'All of our treatments occur without meeting other clients/guests in the various environments of the Hammam. Whether in the case of bookings by a single person, couples or a small group of friends, only the personnel/staff will be in your particular environment to tend to your needs during the various treatments.',
  price_category: 2,
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/0a/58/6f/a8/templum-salutis.jpg',
  time_of_day: 'Morning',
  interest: 'Spa',
  location: location1,
  address: 'Via Ciro da Urbino, 00176 Rome Roma Capitale, Italie',
  longitude: 12.540832,
  latitude: 41.8781283,
  rate: 4,
  web_url: 'http://www.hammamroma.com/'
})

puts "create"

activity5 = Activity.create!({
  name: 'Doma Luxury',
  description: 'Doma Luxury Spa, the most exclusive day spa in Rome, is a dive in the history of the Eternal City. Who has not dreamed of traveling through time? As the days went by the "Dominus" Ancient Rome? As courted men of that time? There were many moments for couples, nor romantic restaurants.',
  price_category: '2',
  image_url: 'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/93/6d/ca.jpg',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,
  address: 'Via Di Parione 24-25 Piazza Navona, 00186 Rome Italie',
  longitude: 12.470770,
  latitude: 41.898370,
  rate: 5,
  web_url: 'https://www.domaspa.com/'
})

puts "create"

activity6 = Activity.create!({
  name: 'Baan Sabai',
  description: 'The Baan Sabai Thai massage center in Rome is the ideal place for anyone looking for a moment to relax, far away from the stress of everyday life, in a harmonious and pleasant setting where attention to detail, courtesy and a professional approach form the basis of the services offered.',
  price_category: '3',
  image_url: 'https://www.wantedinrome.com/i/preview/storage/uploads/2014/02/ilgl4ipo6.jpg',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,
  address: 'Via Degli Scipioni 228, 00192 Rome Italie',
  longitude: 12.462650,
  latitude: 41.909580,
  rate: 4,
  web_url: 'https://baansabai.it/'
})

puts "create"

activity7 = Activity.create!({
  name: 'Barberin Hills',
  description: 'The Center Massage Rome - Barberin Hills and Day Spa, two-story structure that specializes in technical  holistic  and relaxing, are performed over 3 5 massage types , from traditional relaxing , to  de-contracting,  the luxury massage in real rituals also couple.',
  price_category: '2',
  image_url: 'https://lh3.googleusercontent.com/p/AF1QipNSipifKnq4O2DnyzUwxFG8Wr-o4dZtJFvF2Vam=w660-h440-c',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,
  address: 'Via Degli Avignonesi 15 -16 Piazza Barberini, 00187 Rome Italie',
  longitude: 12.487700,
  latitude: 41.903060,
  rate: 4,
  web_url: 'https://www.barberinhills.com/',
})

puts "create"

activity8 = Activity.create!({
  name: 'Bahr',
  description: 'Bahr City Spa, brings back to life the ancient thermal baths of Nero under a smart and modern light. It offers express aesthetic services, hair styling, a relaxation area and, the jewel in the crown, a private spa with Jacuzzi, Turkish bath and sauna for exclusive use.',
  price_category: '1',
  image_url: 'https://lh3.googleusercontent.com/p/AF1QipPvdPo5tV6ST5koY1IM_DVMPBGFqB55hh7s2BJ-=w660-h440-c',
  time_of_day: 'Afternoon',
  interest: 'Spa',
  location: location1,
  address: 'Piazza Rondanini 30A, 00186 Rome Italie',
  longitude: 12.475860,
  latitude: 41.899990,
  rate: 4,
  web_url: 'https://www.bahrcityspa.it/'
})

puts "create"

activity9 = Activity.create!({
  name: 'El Spa',
  description: 'The day spa in the middle of Rome: traditional Hammam, massages, couple paths, rituals of the most ancient traditions to give yourself the wellness you deserve in the most natural and delicate way, cuddled by professionals.',
  price_category: '2',
  image_url: 'https://www.elspa.it/wp-content/uploads/2017/03/El-Spa-vasche.jpg',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,
  address: 'Via Plinio 15c/D C, 00193 Rome Italie',
  longitude: 12.466820,
  latitude: 41.907420,
  rate: 5,
  web_url: 'https://www.elspa.it/'
})

puts "create"

activity10 = Activity.create!({
  name: 'Kami Spa',
  description: 'KAMISPA is an enchanted space, which evokes Asia and its millenary knowledge of the human body as a tool for awareness. 1500 sq mt of facilities to celebrate Tibet, Bhurma, Japan, Thailand, India, Indonesia and China.',
  price_category: '1',
  image_url: 'https://i.pinimg.com/originals/96/b9/d1/96b9d12af4ad378a5bd85ab286c24762.jpg',
  time_of_day: 'Evening',
  interest: 'Spa',
  location: location1,
  address: 'Via Degli Avignonesi 12, 00187 Rome Italie',
  longitude: 12.487800,
  latitude: 41.903090,
  rate: 4,
  web_url: 'http://www.kamispa.com/en/'
})

puts "create"

puts "Create Relax/Restaurant"

# 10 activities --> Restaurant

activity11 = Activity.create!({
  name: 'Mirto',
  description: 'Mirto is Sardinian Restaurant and Pizzeria located in Via del Trullo 476, Rome (Portuense area). Fish specialties. The location is structured on two floors and has an outdoor garden, open in summer and covered in winter. We are open every evening except Monday. Sunday and holidays also for lunch.',
  price_category: '2',
  image_url: 'https://u.tfstatic.com/restaurant_photos/015/288015/169/612/mirto-alloro-vista-sala-adfeb.jpg',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Del Trullo, 477-449, 00148 Roma RM, Italie',
  longitude: 12.437080,
  latitude: 41.838700,
  rate: 5,
  web_url: 'http://www.ristorantemirtoealloro.it/',
})

puts "create"

activity12 = Activity.create!({
  name:'Sottocasa',
  description: 'Italian cuisine, fast food',
  price_category: '1',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-p/11/37/aa/74/sottocasa.jpg',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Dei Crispolti 102, 00159 Rome Italie',
  longitude: 12.550320,
  latitude: 41.909310,
  rate: 4,
  web_url: 'http://www.sottocasafood.it/#/app/home'
})

puts "create"
activity13 = Activity.create!({
  name: 'Pasta e Vino',
  description: 'Pasta and Wine Like ‘Na Vorta Osteria, it was born from the need to rediscover the good flavors of the past, authentic ingredients and recipes.',
  price_category: '2',
  image_url: 'https://u.tfstatic.com/restaurant_photos/147/384147/169/612/pasta-e-vino-osteria-vista-sala-f7772.jpg',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Dei Crispolti 102, 00159 Rome Italie',
  longitude: 12.469880,
  latitude: 41.890410,
  rate: 5,
  web_url: 'https://www.pastaevinoroma.it/'
})


activity14 = Activity.create!({
  name: 'Polpetta',
  description: 'Polpetta was born in the wonderful Roman stage, a new catering format that perfectly combines tradition and innovation with simplicity and flair.',
  price_category: '2',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/0e/35/58/fd/misto-polpetta.jpg',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Di Porta Settimiana 8, 00153 Rome Italie',
  longitude: 12.467800,
  latitude: 41.892080,
  rate: 5,
  web_url: 'https://www.polpetta.it/'
})

activity15 = Activity.create!({
  name: 'Il Laboratorio',
  description: 'The gourmet pizza you have never eaten. Exclusively high quality Italian products, carefully chosen and used with passion. Exclusive internal room on reservation. It is not for everyone!',
  price_category: '1',
  image_url: 'https://u.tfstatic.com/restaurant_photos/825/433825/169/612/laboratorio-della-pizza-sala-8d24c.jpg',
  time_of_day: 'Afternoon',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Cassia 36 Ponte Milvio, 00191 Rome Italie',
  longitude: 12.465910,
  latitude: 41.937900,
  rate: 5,
  web_url: 'https://www.facebook.com/illaboratoriodellapizza/',
})

activity16 = Activity.create!({
  name: 'Enoteca Ferrara',
  description:'The sisters Lina and Mary have created a unique style and philosophy that can be felt in every corner and all the flavors of Enoteca Ferrara, in the heart of Trastevere.',
  price_category: '1',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/17/bd/7d/06/una-delle-nostre-sale.jpg',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Del Moro 1 Piazza Trilussa, 41, 00100 Rome Italie',
  longitude: 12.470150,
  latitude: 41.891360,
  rate: 4,
  web_url: 'https://enotecaferrara.com/'
})

activity17 = Activity.create!({
  name: 'Aqualunae Bistrot',
  description: 'Italian, Seafood, Healthy dishes',
  price_category: '3',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/16/9c/84/f7/il-locale-di-circa-80.jpg',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,
  address: 'Piazza Dei Quiriti 19/20, 00192 Rome Italie',
  longitude: 12.464750,
  latitude: 41.909680,
  rate: 5,
  web_url: 'https://www.facebook.com/aqualunaebistrot/'
})

activity18 = Activity.create!({
  name: 'Mimì e Cocò',
  description: 'Accogliente, caldo, in un palazzo Vescovile del tardo Cinquecento dedicato a coloro che vogliono godere di un ambiente confortevole e che mette tutti a proprio agio, nella via della movida romana, senza rinunciare all’eleganza.',
  price_category: '2',
  image_url: 'https://u.tfstatic.com/restaurant_photos/741/575741/169/612/mimi-e-coco-trast-suggerimento-dello-chef-3e407.jpg',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Della Scala 1, 00153 Rome Italie',
  longitude: 12.468670,
  latitude: 41.890412,
  rate: 4,
  web_url: 'https://www.mimiecoco.com/en/homepage/'
})

activity19 = Activity.create!({
  name: 'Il Tamburello',
  description: 'The restaurant Il Tamburello di Pulcinella is located a few kilometers from the center in the west of the city of Rome.',
  price_category: '3',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/07/ef/7e/8d/il-tamburello-di-pulcinella.jpg',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,
  address: 'Via Pasquale Fiore 23, 00165 Rome Italie',
  longitude: 12.430060,
  latitude: 41.897380,
  rate: 5,
  web_url: 'https://www.facebook.com/iltamburellodipulcinella/'
})

activity20 = Activity.create!({
  name: 'Bull Steak',
  description: 'From illo tempore we are, the only and historic steak house in Rome. By tradition and reputation we are considered by many the "rome steakhouse". The meat in Rome, the good one, we cook it.',
  price_category: '2',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/0d/2f/41/94/img-20161003-141201-largejpg.jpg',
  time_of_day: 'Evening',
  interest: 'Restaurant',
  location: location1,
  address: 'Viale Di Porta Ardeatina 114, 00154 Rome Italie',
  longitude: 12.486190,
  latitude: 41.876120,
  rate: 4,
  web_url: 'https://www.bullsteak.it/'
})

# 10 activities --> Museum


activity21 = Activity.create!({
  name: 'Galerie Borghèse',
  description: 'The Galleria Borghese Museum houses and displays a collection of ancient sculptures, bas-reliefs, and mosaics, as well as paintings and sculptures dating from the 15th through the 19th centuries',
  price_category: '2',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/09/38/09/e3/galleria-borghese.jpg',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,
  address: 'Piazzale del Museo Borghese 5, 00197 Rome Italie',
  longitude: 12.491730,
  latitude: 41.913790,
  rate: 4,
  web_url: 'https://galleriaborghese.beniculturali.it/en/'
})

activity22 = Activity.create!({
  name: 'Palazzo Colonna',
  description: 'The Colonna Palace is one of the largest and oldest private palaces in Rome. Its construction begins in the 14th century and responds to a precise will of the Colonna family who have lived there for eight centuries.',
  price_category: '3',
  image_url: 'https://traveladestatic.imgix.net/media/image/the-colonna-palace-walking-tour_276846.jpg?auto=format&crop=fit&fit=crop&w=800&q=55&auto=format',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,
  address: 'Via Della Pilotta 17, 00187 Rome Italie',
  longitude: 12.484880,
  latitude: 41.897500,
  rate: 5,
  web_url: 'https://www.galleriacolonna.it/'
})

activity23 = Activity.create!({
  name: 'Sistina',
  description: 'If the Pope has museums, it is precisely for this reason! Because art can be an extraordinary vehicle for announcing to men and women all over the world, with simplicity, the good news of God Who made Himself man for us, because He loves us! And this is beautiful!',
  price_category: '2',
  image_url:'https://sg.toluna.com/dpolls_images/2018/01/02/4b7f1ae5-0b32-4d79-a5c3-a504de4e50b5_x365.jpg',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,
  address: 'Viale Vaticano, 00165 Vatican Italie',
  longitude: 12.449540,
  latitude: 41.905460,
  rate: 4,
  web_url: 'http://www.museivaticani.va/content/museivaticani/en.html'
})

activity24 = Activity.create!({
  name: 'Leonardo',
  description:'The "Leonardo Da Vinci Experience" exhibition is the first of its kind - And the only one of its kind in the world - Hosting a collection of Da Vinci s work.',
  price_category: '1',
  image_url: 'https://i.pinimg.com/originals/48/95/12/489512a45040713fcde8866da1464664.jpg',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,
  address: 'Via della Conciliazione 19 Pochi passi da Piazza San Pietro, 00193 Rome Italie',
  longitude: 12.461620,
  latitude: 41.902120,
  rate: 5,
  web_url: 'https://www.leonardodavincimuseo.com/'
})

activity25 = Activity.create!({
  name: 'Romano',
  description: 'The National Roman Museum was born in 1889 as one of the main centers of historical and artistic culture of united Italy.',
  price_category: '2',
  image_url: 'https://romesite.fr/images/museum-rome.jpg',
  time_of_day: 'Morning',
  interest: 'Museum',
  location: location1,
  address: 'Piazza Di Sant Apollinare, 46 Accanto Piazza Navona, 00186 Rome Italie',
  longitude: 12.473130,
  latitude: 41.901050,
  rate: 4,
  web_url: 'https://www.museonazionaleromano.beniculturali.it/it/143/il-museo'
})

activity26 = Activity.create!({
  name: 'Raffaello',
  description: 'The four rooms called Raphael were part of the apartment located on the second floor of the Pontifical Palace chosen by Julius II of the ...',
  price_category: '2',
  image_url: 'https://www.milestonerome.com/wp-content/uploads/2019/02/RaffaelloaRoma-26-1024x768.jpg',
  time_of_day: 'Evening',
  interest: 'Museum',
  location: location1,
  address: 'Viale Vaticano, Vatican Italie',
  longitude: 12.449550,
  latitude: 41.905470,
  rate: 4,
  web_url: 'http://www.museivaticani.va/content/museivaticani/it/collezioni/musei/stanze-di-raffaello.html'
})

activity27 = Activity.create!({
  name: 'Vatican',
  description: 'The Vatican Museums constitute a museum complex located in the Vatican. It brings together twelve museums, which represents five galleries',
  price_category: '3',
  image_url: 'https://www.rome-passion.com/photos/museesvatican/braccio-nuovo.jpg',
  time_of_day: 'Evening',
  interest: 'Museum',
  location: location1,
  address: 'Viale Vaticano, 00120 Vatican Italie',
  longitude: 12.453200,
  latitude: 41.906630,
  rate: 5,
  web_url: 'http://www.museivaticani.va/content/museivaticani/fr.html'
})

activity28 = Activity.create!({
  name: 'Venezia',
  description: 'The Palace of Venice is a Roman palace located between Piazza Venezia and Via del Plebiscito in Rome. It houses the National Palace Museum of Venice.',
  price_category: '2',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Palazzo_Venezia_Roma_07.JPG/347px-Palazzo_Venezia_Roma_07.JPG',
  time_of_day: 'Evening',
  interest: 'Museum',
  location: location1,
  address: 'Piazza Venezia 3 Palazzo Venezia, 00186 Rome Italie',
  longitude: 12.481910,
  latitude: 41.896210,
  rate: 4,
  web_url: 'http://museopalazzovenezia.beniculturali.it/'
})

activity29 = Activity.create!({
  name: 'Galleria',
  description: 'The Galleria Spada is a museum in Rome, which is located in the Palazzo Spada of the same name, located in Piazza Capo di Ferro.',
  price_category: '1',
  image_url: 'https://www.wantedinrome.com/i/preview/storage/uploads/2019/03/galleria-spada-rome-museum.jpg',
  time_of_day: 'Evening',
  interest: 'Museum',
  location: location1,
  address: 'Piazza Capo di Ferro 13 Palazzo Spada, 00186 Rome Italie',
  longitude: 12.471960,
  latitude: 41.894240,
  rate: 5,
  web_url: 'http://galleriaspada.beniculturali.it/'
})

activity30 = Activity.create!({
  name: 'Basilica',
  description: 'The Vatican Museums constitute a museum complex located in the Vatican. It brings together twelve museums, which represents five galleries',
  price_category: '2',
  image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/09/b5/cc/66/museo-del-tesoro-della.jpg',
  time_of_day: 'Evening',
  interest: 'Museum',
  location: location1,
  address: 'Piazza San Pietro, 00200 Vatican Italie',
  longitude: 12.457540,
  latitude: 41.902270,
  rate: 4,
  web_url: 'http://www.vatican.va/various/basiliche/san_pietro/index_it.htm'
})

#create category


category1 = Category.create!({
  name: 'Family'
})

category2 = Category.create!({
  name: 'Relax'
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
  category: category2,
  activity: activity1
})

pair2 = Pair.create!({
  category: category2,
  activity: activity2
})
pair3 = Pair.create!({
  category: category2,
  activity: activity3
})

pair4 = Pair.create!({
  category: category2,
  activity: activity4
})
pair5 = Pair.create!({
  category: category2,
  activity: activity5
})
pair6 = Pair.create!({
  category: category2,
  activity: activity6
})
pair7 = Pair.create!({
  category: category2,
  activity: activity7
})

pair8 = Pair.create!({
  category: category2,
  activity: activity8
})
pair9 = Pair.create!({
  category: category2,
  activity: activity9
})

pair10 = Pair.create!({
  category: category2,
  activity: activity10
})
pair11 = Pair.create!({
  category: category2,
  activity: activity11
})
pair12 = Pair.create!({
  category: category2,
  activity: activity12
})
pair13 = Pair.create!({
  category: category2,
  activity: activity13
})

pair14 = Pair.create!({
  category: category2,
  activity: activity14
})
pair15 = Pair.create!({
  category: category2,
  activity: activity15
})

pair16 = Pair.create!({
  category: category2,
  activity: activity16
})
pair17 = Pair.create!({
  category: category2,
  activity: activity17
})
pair18 = Pair.create!({
  category: category2,
  activity: activity18
})
pair19 = Pair.create!({
  category: category2,
  activity: activity19
})
pair20 = Pair.create!({
  category: category2,
  activity: activity20
})
pair21 = Pair.create!({
  category: category2,
  activity: activity21
})
pair22 = Pair.create!({
  category: category2,
  activity: activity22
})
pair23 = Pair.create!({
  category: category2,
  activity: activity23
})
pair24 = Pair.create!({
  category: category2,
  activity: activity24
})

#fake seed
pair25 = Pair.create!({
  category: category2,
  activity: activity25
})
pair26 = Pair.create!({
  category: category2,
  activity: activity26
})

pair27 = Pair.create!({
  category: category2,
  activity: activity27
})

pair28 = Pair.create!({
  category: category2,
  activity: activity28
})

pair29 = Pair.create!({
  category: category2,
  activity: activity29
})

pair30 = Pair.create!({
  category: category2,
  activity: activity30
})








