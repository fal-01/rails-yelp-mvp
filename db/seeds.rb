# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "07733288397", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07734286387", category: "italian"}
la_dame = {name: "La Dame de Pic London", address: "Four Seasons Hotel at Ten, 10 Trinity Square, London EC3N 4AJ", phone_number: "0773459288397", category: "french"}
ottos = {name: "Otto's French Restaurant London", address: "182 Grays Inn Rd, London WC1X 8EW", phone_number: "077345286387", category: "french"}
sticks = {name: "Sticks'n'Sushi Covent Garden", address: "11 Henrietta St, London WC2E 8PY", phone_number: "0773445686387", category: "japanese"}

[dishoom, pizza_east, la_dame, ottos, sticks].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
