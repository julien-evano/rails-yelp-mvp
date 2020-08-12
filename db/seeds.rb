# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'belgian' }
hello = { name: 'Hello', address: 'London', category: 'french' }
bonjour =  { name: 'Bonjour', address: 'Paris', category: 'french' }
goodbye =  { name: 'Goodbye', address: 'Marseille', category: 'french' }
salut =  { name: 'Salut', address: 'Paris', category: 'japanese' }
my_pizza = { name: 'My Pizza', address: 'New York', category: 'italian' }

[dishoom, pizza_east, hello, bonjour, goodbye, salut, my_pizza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "valide ? #{restaurant.valid?}"
  puts "Created #{restaurant.name}"
end
puts "Finished!"
