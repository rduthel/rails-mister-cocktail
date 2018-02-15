require 'json'
require 'open-uri'

ingredients = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

50.times do |i|
  puts ingredients['drinks'][i]['strIngredient1']
  Ingredient.create!(
    name: ingredients['drinks'][i]['strIngredient1']
  )
end
