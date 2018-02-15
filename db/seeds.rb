require 'json'
require 'open-uri'

Ingredient.destroy_all

ingredients = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

ingredients['drinks'].each_index do |index|
  Ingredient.create!(
    name: ingredients['drinks'][index]['strIngredient1']
  )
end
