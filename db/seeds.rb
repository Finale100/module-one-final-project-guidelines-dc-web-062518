
puts "Creating some recipes"

Recipe.create(name: "B.L.T.", category: "American")
Recipe.create(name: "Grilled Cheese", category: "American")
Recipe.create(name: "Pepperoni Pizza", category: "Italian")
Recipe.create(name: "Margherita Pizza", category: "Italian")
Recipe.create(name: "Alfredo", category: "Italian")
Recipe.create(name: "Beef Fried Rice", category: "Chinese")
Recipe.create(name: "Beef Bulgogi", category: "Korean")

Ingredients.create(name: "Bacon", cost: "$2")
Ingredients.create(name: "Lettuce", cost: "$1")
Ingredients.create(name: "Tomato", cost: "$1.50")
Ingredients.create(name: "Bread", cost: "$2")
Ingredients.create(name: "American Cheese", cost: "$2.30")
Ingredients.create(name: "Butter", cost: "$.75")
Ingredients.create(name: "Flour", cost: "$5")
Ingredients.create(name: "Olive Oil", cost: "$6")
Ingredients.create(name: "Eggs", cost: "$2")
Ingredients.create(name: "Mozzarella", cost: "$4")
Ingredients.create(name: "Pepperoni's", cost: "$3")
