require 'open-uri'
require 'json'

# Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).string
contents = JSON.parse(file)

contents["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end


  #USE LINE BELOW TO ADD INDIVIDUAL INGREDIENTS BY CHOICE,
  #LINES ABOVE HAD ALREADY BEEN LOADED INTO DB.

  Ingredient.create!(name: "Whatever you want")
