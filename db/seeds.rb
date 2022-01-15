# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "❌ destroying products"

Product.destroy_all

puts "✅ products destroyed successfully"
puts "..."
puts "🌱 creating products"

Product.create(title: "Snowboard", description: "Glides like butter", image: "./../app/assets/images/snowboard-unsplash.jpg", price: "120")

Product.create(title: "Nintendo Switch", description: "Play fun games everywhere", image: "./../app/assets/images/nintendoswitch-unsplash.jpg", price: "349,99")

puts "✅ products created successfully"