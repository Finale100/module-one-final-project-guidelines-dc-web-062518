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
  puts "5. Exit"
  puts ""
end

def option_1
  input = gets.chomp
  case input
  when "1"
    puts ""
    puts "----- All of your recipes -----"
    puts "Select a recipe by number!"
    puts ""
    Recipe.all.each_with_index { |x, index| puts "#{index + 1}. #{x.name}" }
    puts ""
    Recipe.recipe_ingredient_list
    puts ""
  when "2"
    puts ""
    puts "What's the recipe name?"
    puts ""
      x = gets.chomp
      puts ""
      Recipe.all.find do |rec|
          if x == rec.name
          puts "You already have this recipe."
          puts "Sending you back to the main menu..."
          prompt
          option_1
        end
      end
    puts ""
    puts "Type of cuisine?"
    puts ""
      y = gets.chomp
      puts ""
      puts "New Recipe: #{x}"
      puts ""
      Recipe.create(name: x, category: y) #making the recipes here
      puts "What are the ingredients? Please enter one at a time."
      puts ""
      add_ingredient
  when "3"
    puts ""
    puts "Let's modify a recipe!"
    Ingredient.update_recipe
  when "4"
    puts ""
    puts "Which recipe do you want to remove?"
    puts ""
    remove_recipe
  when "5"
    puts "*********** GOODBYE **********"
  else
    puts ""
    puts "Please select a valid option!?"
    option_1
  end
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
  puts ""
  puts "Are there anymore ingredients? (y/n)"
  puts ""
    b = gets.chomp
    if b == "y"
      add_ingredient
    elsif b == "n"
      puts "Yay, you've created a new recipe!"
      puts ""
      puts "Press any key to return to main menu"
      gets.chomp
      return_to_main
    end
  end


def remove_recipe
  Recipe.all.each_with_index { |x, index| puts "#{index + 1}. #{x.name}" }
  x = gets.chomp
  Recipe.all.each do |rec|
    if rec.name == x
      Recipe.all.delete(rec)
    end
  end
  puts ""
  puts "#{x} is now outta here!!!"
  puts ""
  puts "Press any key to return to the menu."
  gets.chomp
  prompt
  option_1
end

def return_to_main
  a = gets.chomp
  prompt
  option_1
end

# binding.pry
puts ""
puts "Welcome to Tastybook!"

prompt
option_1
# recipe_list
