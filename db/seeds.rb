# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'efish',
    address:      'Gojo Kawabata',
    phone_number: '1234-5678',
    category:     'italian'
  },
  {
    name:         'rakusenroh',
    address:      'Shijo Karasuma',
    phone_number: '1234-8765',
    category:     'chinese'
  },
  {
    name:         'kiccho',
    address:      'Kyoto station',
    phone_number: '5678-5678',
    category:     'japanese'
  },
  {
    name:         'french restaurant',
    address:      'Gojo Karasuma',
    phone_number: '8765-4321',
    category:     'french'
  },
  {
    name:         'belgian bar',
    address:      'Sannomiya',
    phone_number: '1234-4321',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
