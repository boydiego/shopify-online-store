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

description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempor malesuada dapibus. Morbi vulputate tempor convallis. Cras congue sodales justo, sit amet dignissim libero. Nulla mattis lectus iaculis nibh ultricies, et luctus quam interdum. Quisque a dolor lobortis, finibus leo a, dictum urna. Fusce scelerisque, mi et cursus ultrices, risus neque facilisis mauris, vitae dapibus orci odio in nulla. Nam bibendum nisi lobortis, lobortis magna sit amet, scelerisque diam.'

seed_data = [
  {
    params: {
      title: "Snowboard",
      description: description,
      price: "120"
    },
    image: "app/assets/images/snowboard-unsplash.jpg",
  },
  {
    params: {
      title: "Nintendo Switch",
      description: description,
      price: "349,99"
    },
    image: "app/assets/images/nintendoswitch-unsplash.jpg",
  },
  {
    params: {
      title: "Surfboard",
      description: description,
      price: "89,99"
    },
    image: "app/assets/images/surfboard-unsplash.jpg",
  },
  {
    params: {
      title: "Smart TV",
      description: description,
      price: "240,30"
    },
    image: "app/assets/images/smarttv-unsplash.jpg",
  },
  {
    params: {
      title: "Music Box",
      description: description,
      price: "90"
    },
    image: "app/assets/images/musicbox-unsplash.jpg",
  }
]

seed_data.each do |product|
  puts "Creating #{product[:params][:title]}..."
  new_product = Product.new(product[:params])
  new_product.image.attach(
    io: File.open(product[:image]),
    filename: product[:image].split('/').last,
    content_type: 'image/jpg'
  )
  new_product.save!
end

puts "✅ products created successfully"