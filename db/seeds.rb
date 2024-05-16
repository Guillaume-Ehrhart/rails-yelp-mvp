# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0665849515", category: "chinese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0141522478", category: "italian"}
globe = {name: "Globe la brasserie", address: "rue Jules Verne, 42530 Saint-Genest", phone_number: "5487876976", category: "french"}
golf = {name: "Restaurant du golf", address: "62 rue Saint-Simon, 42000 Saint-Etienne", phone_number: "0125522478", category: "japanese"}
feuj = {name: "Le feugerolles", address: "22 rue de la République, 42500 Le Chambon", phone_number: "0114455622", category: "belgian"}

[dishoom, pizza_east, globe, golf, feuj].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished"
