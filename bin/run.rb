require_relative '../config/environment'
require 'pry'

def prompt
  puts "Welcome to your recipe library!"
  puts "What would you like to do?"
  puts "1. View all Recipes"
  puts "2. Add Recipe"
  puts "3. Modify Recipe"
  puts "4. Remove Recipe"
end

def option_1
  input = gets.chomp
puts "Select a recipe!"
  if input == "1"
    Recipe.all.each_with_index {|x, index| puts "#{index + 1}. #{x.name}" }
  end
end

def recipe_list
  input = gets.chomp
  if input == "1"
    blt = Recipe.all.first
    blt.ingredients
  end
end



puts "Welcome to Tastybook!"
prompt
option_1
recipe_list


# if input == "1"
#   Recipe.all.each_with_index {|x, index| puts "#{index}. #{x.name}" }
# end
