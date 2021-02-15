puts "cleaning up database"
Jersey.destroy_all
puts "database is clean"

puts 'Creating jerseys...'
Jersey.create!({
  name: "Chicago Bulls",
  price: 450,
  size: "XL",
  description: "NEW MEN'S Michael Jordan 1989 All Star NBA Jersey Red"
})
Jersey.create!({
    name: "LA",
    price: 650,
    size: "L",
    description: "NEW MEN'S Kobe Bryant 2009 All Star NBA Jersey Yellow"
})
Jersey.create!({
    name: "New York Knicks",
    price: 250,
    size: "M",
    description: "NEW MEN'S Derrick Rose 2021 NBA Jersey Blue"
})
Jersey.create!({
    name: "Boston Celtics",
    price: 599,
    size: "L",
    description: "NEW MEN'S Larry Bird 1984 All Star NBA Jersey Green"
})
puts 'Finished!'
