# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# require 'json'
# require 'open-uri'
# require "rest-client"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the bar..."
Ingredient.delete_all
puts "Shopping for nice ingredients..."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Dark rum")
Ingredient.create(name: "Amaretto")
Ingredient.create(name: "Schweppes")

puts 'Ingredients are ready for the shaker!'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# 10.times do
#   records = JSON.parse(open(url).read)
#   records.each do |record|
#     Ingredient.create!(
#       name: record
#       )
#   end
# end

# puts "Ingredients ready for the shaker!"

# require "json"

# ingredients_list = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# repos = JSON.parse(response)
# # => repos is an `Array` of `Hashes`.

# repos.size
# # => 30
