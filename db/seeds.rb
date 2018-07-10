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
bulgogi = Recipe.create(name: "Beef Bulgogi", category: "Korean")

bacon = Ingredient.create(name: "Bacon", cost: "$2")
lettuce = Ingredient.create(name: "Lettuce", cost: "$1")
tomato = Ingredient.create(name: "Tomato", cost: "$1.50")
bread = Ingredient.create(name: "Bread", cost: "$2")
ac = Ingredient.create(name: "American Cheese", cost: "$2.30")
butter = Ingredient.create(name: "Butter", cost: "$.75")
flour = Ingredient.create(name: "Flour", cost: "$5")
oo = Ingredient.create(name: "Olive Oil", cost: "$6")
eggs = Ingredient.create(name: "Eggs", cost: "$2")
mc = Ingredient.create(name: "Mozzarella", cost: "$4")
pepperonis = Ingredient.create(name: "Pepperoni's", cost: "$3")

blt.ingredients.push(lettuce, tomato, bread, bacon)


# binding.pry
puts "end"
