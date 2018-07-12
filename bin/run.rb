require_relative '../config/environment'
require 'pry'

def prompt
  puts ""
  puts "Welcome to your recipe library!"
  puts ""
  puts "What would you like to do?"
  puts ""
  puts "1. View all Recipes"
  puts "2. Add Recipe"
  puts "3. Modify Recipe"
  puts "4. Remove Recipe"
end

def option_1
  input = gets.chomp
  case input
  when "1"
    puts ""
    puts "Select a recipe by number!"
    puts ""
    Recipe.all.each_with_index { |x, index| puts "#{index + 1}. #{x.name}" }
    recipe_ingredient_list
  when "2"
    puts ""
    puts "What's the recipe name?"
    puts ""
      x = gets.chomp
    puts ""
    puts "Type of cuisine?"
    puts ""
      y = gets.chomp
      puts "New Recipe: #{x}"
      puts ""
      Recipe.create(name: x, category: y)
      puts "What are the ingredients? Please enter one at a time."
      add_ingredient
  when "3"
    puts ""
    puts "Let's modify a recipe!"
    Ingredient.update_recipe
  when "4"
    puts ""
    puts "Let's remove a recipe!"
  else
    puts ""
    puts "Please select a valid option!"
  end
end

def recipe_ingredient_list
  x = gets.chomp
  puts "Ingredients List"
  puts ""
    puts Recipe.find(x).ingredients_by_name
  end

def add_ingredient
  ing = gets.chomp
  Ingredient.all.find do |ingredient|
    if ing.downcase == ingredient.name.downcase
    Recipe.last.ingredients.push(ingredient)
    else
      new_ing = Ingredient.new(name: ing)
      Recipe.last.ingredients.push(new_ing)
    end
  end
  puts "Are there anymore ingredients? (y/n)"
    b = gets.chomp
    if b == "y"
      add_ingredient
    elsif b == "n"
      puts "Yay, you've created a new recipe!"
      puts "Press any key to return to main menu"
      gets.chomp
      return_to_main
    end
end

def return_to_main
  a = gets.chomp
  prompt
  option_1
end

# def update_recipe
#   puts "Which recipe do you want to edit?"
#   puts ""
#   Recipe.all.each_with_index { |x, index| puts "#{index + 1}. #{x.name}" }
#   x = gets.chomp
#   puts "Which item would you like to edit?"
#   puts ""
#     var = Recipe.find(x).ingredients_by_index
#     y = gets.chomp
#     puts ""
#     puts "What do you want to change it to?"
#     var.find do |ing|
#       if y.downcase == ing.name.downcase
#         # binding.pry
#         new_ing = "#{gets.chomp}"
#         ing.name.replace(new_ing)
#       end
#     end
#
# end


puts ""
puts "Welcome to Tastybook!"

prompt
option_1
# recipe_list
