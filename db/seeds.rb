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

rice = Ingredient.create(name: "Rice")
heavy_cream = Ingredient.create(name: "Heavy Cream")
bacon = Ingredient.create(name: "Bacon")
lettuce = Ingredient.create(name: "Lettuce")
tomato = Ingredient.create(name: "Tomato")
bread = Ingredient.create(name: "Bread")
ac = Ingredient.create(name: "American Cheese")
butter = Ingredient.create(name: "Butter")
flour = Ingredient.create(name: "Flour")
oo = Ingredient.create(name: "Olive Oil")
egg = Ingredient.create(name: "Egg")
mozzarella = Ingredient.create(name: "Mozzarella")
pepperoni = Ingredient.create(name: "Pepperoni")
cheese = Ingredient.create(name: "Cheese")
pizza_dough = Ingredient.create(name: "Dough")
tomato_sauce = Ingredient.create(name: "Tomato Sauce")
pasta = Ingredient.create(name: "Pasta")
garlic = Ingredient.create(name: "Garlic")
beef = Ingredient.create(name: "Beef")
bpepper = Ingredient.create(name: "Bell Pepper")
onion = Ingredient.create(name: "Onion")
bsprout = Ingredient.create(name: "Bean Sprout")
carrot = Ingredient.create(name: "Carrot")
basil = Ingredient.create(name: "Basil")

blt.ingredients.push(lettuce, tomato, bread, bacon)
gc.ingredients.push(cheese, bread)
pepperoni_p.ingredients.push(pizza_dough, cheese, tomato_sauce, pepperoni)
alfredo.ingredients.push(heavy_cream, pasta, garlic)
bfr.ingredients.push(rice, bpepper, onion, beef, bsprout)
beef_bulgogi.ingredients.push(rice, beef, bsprout, egg, onion)
margherita.ingredients.push(pizza_dough, tomato_sauce, mozzarella, tomato, basil, oo)


# binding.pry
puts "end"
