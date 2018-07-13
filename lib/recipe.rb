require 'pry'
class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_by_name
    self.ingredients.map { |x|  x.name }
  end

  def ingredients_by_index
    self.ingredients.each_with_index { |x, index| puts "#{index + 1}. #{x.name}"}
  end

  def self.recipe_ingredient_list
    x = gets.chomp
    puts ""
    puts "----- Ingredients List -----"
    puts ""
    puts "Recipe: #{Recipe.find(x).name}"
    puts ""
      puts Recipe.find(x).ingredients_by_name
    puts ""
    puts "Press any key to return to Recipes."
    gets.chomp
    prompt
    option_1
  end


end
