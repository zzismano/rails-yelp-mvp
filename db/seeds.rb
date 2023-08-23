# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = Restaurant.create!(
  [
    { name: 'Chon Kou', address: 'Copacabana', phone_number:'(21) 98172-8216', category: 'chinese' },
    { name: 'Minimok', address: 'Ipanema', phone_number:'(21) 99152-4236', category: 'japanese' },
    { name: 'Cantina da Praça', address: 'Ipanema', phone_number:'(21) 96763-6446', category: 'italian' },
    { name: 'Le Blé Noir', address: 'Copacabana', phone_number:'(21) 99972-4316', category: 'french' },
    { name: 'Samurai San', address: 'Flamengo', phone_number:'(21) 99762-4446', category: 'japanese' }
  ]
)
p restaurants
puts 'Finished!'
