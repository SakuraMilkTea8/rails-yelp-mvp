# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding..'

5.times do |f|
  resto = Restaurant.new(name: Faker::Hipster.word, address: Faker::Address.street_address, category: %w[chinese italian japanese french belgian][rand(0..4)])
  resto.save
end

puts 'Done!'
