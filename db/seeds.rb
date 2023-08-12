# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
require 'json'
url = 'http://thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = JSON.parse(URI.open(url).read)

puts 'Clearing db...'
Ingredient.destroy_all

puts 'Creating ingredients...'
response['drinks'].each do |ingredient_hash|
  Ingredient.create!( name: ingredient_hash['strIngredient1'] )
end

puts "Created #{Ingredient.count} ingredients!"
