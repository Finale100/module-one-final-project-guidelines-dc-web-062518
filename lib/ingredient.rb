require 'pry'
class Ingredient < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def self.update_recipe
    puts "Which recipe do you want to edit?"
    puts ""
    Recipe.all.each_with_index { |x, index| puts "#{index + 1}. #{x.name}" }
    x = gets.chomp #selects which recipe
    puts "Would you like to add or drop an ingredient?"
    puts ""
      input = gets.chomp
      if input == "add"
        puts "What ingredient would you like to add?"
        puts ""
        new_add = gets.chomp #Adding a new ingredient
        Ingredient.all.find do |ingredient|
          if new_add.downcase == ingredient.name.downcase
            Recipe.find(x) << ingredient
          else
        add_ing = Ingredient.create(name: new_add)
        Recipe.find(x).ingredients << add_ing
        puts ""
        puts "Success!"
        puts "Press any key to return to main menu"
        gets.chomp
        prompt
        option_1
          end
        end
      elsif input == "drop"
        puts "Which ingredient would you like to drop? Please enter the name of the item"
        puts ""
        var = Recipe.find(x).ingredients_by_index
        puts ""
        drop_item = gets.chomp
        var.each do |ing_item|
          if drop_item.downcase == ing_item.name.downcase
            Recipe.find(x).ingredients -= [ing_item]
            puts "Success!"
            puts ""
            puts "Press any key to return to Recipes."
            gets.chomp
            prompt
            option_1
          end
        end
      else
      puts "Invalid Entry"
    end
  end
end

def add_ingredient_to_existing_recipe
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
