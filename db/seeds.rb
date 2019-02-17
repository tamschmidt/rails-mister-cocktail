require 'open-uri'

puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?

puts "Destroy Cocktails"
Cocktail.destroy_all if Rails.env.development?

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

# # Don't use the JSON list

# puts 'Creating seed...'

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')

# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Caipirinha')

# Dose.create(description: 'abc', cocktail_id: 1, ingredient_id: 1)
# Dose.create(description: 'abc', cocktail_id: 1, ingredient_id: 3)
# Dose.create(description: 'abc', cocktail_id: 2, ingredient_id: 1)
# Dose.create(description: 'abc', cocktail_id: 2, ingredient_id: 2)

# puts 'Done!'
