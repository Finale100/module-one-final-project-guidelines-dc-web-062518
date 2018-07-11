Ingredient.destroy_all
Recipe.destroy_all
require 'pry'

puts "Creating some recipes"

blt = Recipe.create(name: "B.L.T.", category: "American")
gc = Recipe.create(name: "Grilled Cheese", category: "American")
pepperoni_p = Recipe.create(name: "Pepperoni Pizza", category: "Italian")
margherita = Recipe.create(name: "Margherita Pizza", category: "Italian")
alfredo = Recipe.create(name: "Alfredo", category: "Italian")
bfr = Recipe.create(name: "Beef Fried Rice", category: "Chinese")
beef_bulgogi = Recipe.create(name: "Beef Bulgogi", category: "Korean")

rice = Ingredient.create(name: "Rice", cost: "$10")
heavy_cream = Ingredient.create(name: "Heavy Cream")
bacon = Ingredient.create(name: "Bacon", cost: "$2")
lettuce = Ingredient.create(name: "Lettuce", cost: "$1")
tomato = Ingredient.create(name: "Tomato", cost: "$1.50")
bread = Ingredient.create(name: "Bread", cost: "$2")
ac = Ingredient.create(name: "American Cheese", cost: "$2.30")
butter = Ingredient.create(name: "Butter", cost: "$.75")
flour = Ingredient.create(name: "Flour", cost: "$5")
oo = Ingredient.create(name: "Olive Oil", cost: "$6")
egg = Ingredient.create(name: "Egg", cost: "$2")
mozzarella = Ingredient.create(name: "Mozzarella", cost: "$4")
pepperoni = Ingredient.create(name: "Pepperoni", cost: "$3")
cheese = Ingredient.create(name: "Cheese", cost: "$100")
pizza_dough = Ingredient.create(name: "dough", cost: "$150")
tomato_sauce = Ingredient.create(name: "tomato sauce", cost: "$5")
pasta = Ingredient.create(name: "Pasta", cost: "$15")
garlic = Ingredient.create(name: "Garlic", cost: "$5")
beef = Ingredient.create(name: "Beef", cost: "$12")
bpepper = Ingredient.create(name: "Bell Pepper", cost: "$1")
onion = Ingredient.create(name: "Onion", cost: "$5")
bsprout = Ingredient.create(name: "Bean Sprout", cost: "$10")
carrot = Ingredient.create(name: "Carrot", cost: "$16")
basil = Ingredient.create(name: "Basil", cost: "$20")

blt.ingredients.push(lettuce, tomato, bread, bacon)
gc.ingredients.push(cheese, bread)
pepperoni_p.ingredients.push(pizza_dough, cheese, tomato_sauce, pepperoni)
alfredo.ingredients.push(heavy_cream, pasta, garlic)
bfr.ingredients.push(rice, bpepper, onion, beef, bsprout)
beef_bulgogi.ingredients.push(rice, beef, bsprout, egg, onion)
margherita.ingredients.push(pizza_dough, tomato_sauce, mozzarella, tomato, basil, oo)


# binding.pry
puts "end"
