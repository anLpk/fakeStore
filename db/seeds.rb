require "open-uri"

puts "cleaning up database"
Jersey.destroy_all
puts "database is clean"

puts 'Creating jerseys...'

jersey_1 = Jersey.create(name: "Chicago Bulls", price: rand(40..100), size: "XL", description: "NEW MEN'S Michael Jordan 1993 All Star NBA Jersey Red-White")
file = URI.open('https://i.etsystatic.com/27044615/r/il/db25ee/2776765548/il_1140xN.2776765548_svwe.jpg')
jersey_1.photo.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')

jersey_2 = Jersey.create(name: "Miami Heats", price: rand(40..100), size: "XXL", description: "NEW MEN'S Chris Bosh 2005 NBA Vintage Jersey")
file = URI.open('https://i.etsystatic.com/24412902/r/il/ec4b59/2705786212/il_1140xN.2705786212_q995.jpg')
jersey_2.photo.attach(io: file, filename: 'photo2.jpg', content_type: 'image/jpg')

jersey_3 = Jersey.create(name: "Memphis Grizzlies", price: rand(40..100), size: "L", description: "NEW MEN'S Ja Morant 2019 NBA Jersey")
file = URI.open('https://i.etsystatic.com/27150226/r/il/2176d3/2801412952/il_1140xN.2801412952_s7bg.jpg')
jersey_3.photo.attach(io: file, filename: 'photo3.jpg', content_type: 'image/jpg')

jersey_4 = Jersey.create(name: "Phoenix Suns", price: rand(40..100), size: "L", description: "NEW MEN'S Steve Nash 2005 NBA Jersey Vintage")
file = URI.open('https://i.etsystatic.com/24447208/r/il/9746e5/2578961501/il_1140xN.2578961501_k338.jpg')
jersey_4.photo.attach(io: file, filename: 'photo4.jpg', content_type: 'image/jpg')

jersey_5 = Jersey.create(name: "Toronto Raptors", price: rand(60..100), size: "L", description: "NEW MEN'S Vince Carter 2003 NBA Jersey")
file = URI.open('https://i.etsystatic.com/27351228/r/il/e83d9a/2904426931/il_1140xN.2904426931_ltfm.jpg')
jersey_5.photo.attach(io: file, filename: 'photo5.jpg', content_type: 'image/jpg')

jersey_6 = Jersey.create(name: "Denver Nuggets", price: rand(50..100), size: "S", description: "NEW MEN'S Allan Iverson 1994 NBA Jersey Vintage")
file = URI.open('https://i.etsystatic.com/24447208/r/il/8a4258/2578910547/il_1140xN.2578910547_jmoi.jpg')
jersey_6.photo.attach(io: file, filename: 'photo6.jpg', content_type: 'image/jpg')

jersey_7 = Jersey.create(name: "Phoenix Suns", price: rand(20..80), size: "XXXL", description: "NEW MEN'S Devin Booker 1986 NBA Jersey Vintage")
file = URI.open('https://i.etsystatic.com/15878215/r/il/706961/2841296027/il_1140xN.2841296027_eqap.jpg')
jersey_7.photo.attach(io: file, filename: 'photo7.jpg', content_type: 'image/jpg')

jersey_8 = Jersey.create(name: "Detroit Pistons", price: rand(80..100), size: "XL", description: "Grant Hill Detroit Pistons NBA Champion Stitched Jersey")
file = URI.open('https://i.etsystatic.com/17056619/r/il/59e690/2336246331/il_1140xN.2336246331_e108.jpg')
jersey_8.photo.attach(io: file, filename: 'photo8.jpg', content_type: 'image/jpg')

jersey_9 = Jersey.create(name: "MJ GOAT", price: rand(200..300), size: "XL", description: "Michael Jordan #23 NBA 1996 All Star Jersey Throwback Retro")
file = URI.open('https://i.etsystatic.com/27130655/r/il/01af13/2816831102/il_1140xN.2816831102_b0x0.jpg')
jersey_9.photo.attach(io: file, filename: 'photo9.jpg', content_type: 'image/jpg')

jersey_10 = Jersey.create(name: "Houston Rockets", price: rand(20..50), size: "XXXL", description: "Rarissima canotta vintage Nba Hakeem Olajuwon numero 34 Houston Rockets par Champion")
file = URI.open('https://i.etsystatic.com/8973738/r/il/6fecab/2021382839/il_1140xN.2021382839_sp7l.jpg')
jersey_10.photo.attach(io: file, filename: 'photo10.jpg', content_type: 'image/jpg')

jersey_11 = Jersey.create(name: "Atlanta Hawks", price: rand(20..60), size: "L", description: "Stacey Augmon #2 Atlanta Hawks Champion NBA maillot Sz Large")
file = URI.open('https://i.etsystatic.com/23238075/r/il/9083f4/2897540735/il_1140xN.2897540735_5d37.jpg')
jersey_11.photo.attach(io: file, filename: 'photo11.jpg', content_type: 'image/jpg')

jersey_12 = Jersey.create(name: "Los Angeles Lakers", price: rand(150..400), size: "L", description: "NEW MEN'S Kobe Bryant 2009 All Star NBA Jersey Yellow")
file = URI.open('https://i.etsystatic.com/23748532/r/il/523232/2450029173/il_1140xN.2450029173_ehkq.jpg')
jersey_12.photo.attach(io: file, filename: 'photo12.jpg', content_type: 'image/jpg')

jersey_13 = Jersey.create(name: "Seattle Sonic", price: rand(20..50), size: "XL", description: "vintage Jersey NBA Seattle Sonic Kemp/40 Taille18-20")
file = URI.open('https://i.etsystatic.com/10986216/r/il/476637/2332886388/il_1140xN.2332886388_qk24.jpg')
jersey_13.photo.attach(io: file, filename: 'photo13.jpg', content_type: 'image/jpg')

jersey_14 = Jersey.create(name: "Houston Rockets", price: rand(40..80), size: "XXL", description: "vintage Jersey NBA Houston Rockets Olajuwon/34 Taille48")
file = URI.open('https://i.etsystatic.com/10986216/r/il/52df51/2332915100/il_1140xN.2332915100_deop.jpg')
jersey_14.photo.attach(io: file, filename: 'photo14.jpg', content_type: 'image/jpg')

puts "#{Jersey.count} Jersey created..."

puts 'Finished!'
