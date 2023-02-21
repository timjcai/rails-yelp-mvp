# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

CATEGORIES = %w[chinese italian japanese french belgian].freeze

def new_name
  Faker::Restaurant.name
end

def new_address
  Faker::Address.street_address
end

def new_number
  Faker::PhoneNumber.phone_number
end

def sample(array)
  array.sample
end

array = []

5.times do
  p new_restaurant_attr = { name: new_name, address: new_address, phone_number: new_number, category: sample(CATEGORIES) }
  array << new_restaurant_attr
end

array.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
