# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'rest-client'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the bar...'
Cocktail.delete_all
Ingredient.delete_all
puts 'Shopping for nice ingredients...'

response = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(response, symbolize_names: true)

json[:drinks].each do |drink|
  name = drink[:strIngredient1]
  puts "+#{name}"
  Ingredient.create!(name: name)
end

puts 'Ingredients are ready for the shaker!'
