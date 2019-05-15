require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized = open(url).read
ingredients = JSON.parse(serialized)



ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


c1 = Cocktail.create(name: "Manhattan")
c2 = Cocktail.create(name: "Mojito")
c3 = Cocktail.create(name: "French 75")
c4 = Cocktail.create(name: "White Russian")


url = 'http://loremflickr.com/300/300/cocktail'

c1.remote_photo_url = url
c2.remote_photo_url = url
c3.remote_photo_url = url
c4.remote_photo_url = url

c1.save
c2.save
c3.save
c4.save

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "champagne")
