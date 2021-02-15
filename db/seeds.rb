puts 'Creating jerseys...'
Jersey.create!({
  name: "Chicago Bulls",
  price: 450,
  size: "XL",
  description: "NEW MEN'S Michael Jordan 1989 All Star NBA Jersey Red Size XL"
})
Jersey.create!({
    name: "LA",
    price: 650,
    size: "L",
    description: "NEW MEN'S Kobe Bryant 2009 All Star NBA Jersey Yellow Size L"
})
puts 'Finished!'
