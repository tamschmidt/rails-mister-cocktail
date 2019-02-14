puts 'Creating seed...'

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

Cocktail.create(name: 'Mohito')
Cocktail.create(name: 'Caipirinha')

Dose.create(description: 'abc', cocktail_id: 1, ingredient_id: 1)
Dose.create(description: 'abc', cocktail_id: 1, ingredient_id: 3)
Dose.create(description: 'abc', cocktail_id: 2, ingredient_id: 1)
Dose.create(description: 'abc', cocktail_id: 2, ingredient_id: 2)

puts 'Done!'
