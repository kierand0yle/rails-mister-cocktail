require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all

# how to use the cocktail db

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# serialized = open(url).read
# ingredients = JSON.parse(serialized)

# ingredients.each do |ingredient|
#   puts ingredient
# end
#

Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "French 75")
Cocktail.create(name: "White Russian")


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "champagne")
