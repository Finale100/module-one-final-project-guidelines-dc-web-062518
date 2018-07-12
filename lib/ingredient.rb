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
        new_add = gets.chomp #Adding a new ingredient
        Ingredient.all.find do |ingredient|
          if new_add.downcase == ingredient.name.downcase
            Recipe.find(x) << ingredient
          elsif
        add_ing = Ingredient.create(name: new_add)
        binding.pry
        Recipe.find(x).ingredients << add_ing
          end
        end
      elsif input == "drop"
        puts "Which ingredient would you like to drop? Please enter the name of the item"
        var = Recipe.find(x).ingredients_by_index
        drop_item = gets.chomp
        var.each do |ing_item|
          # binding.pry
          if drop_item.downcase == ing_item.name.downcase
            Recipe.find(x).ingredients -= [ing_item]
          end
        end
        binding.pry
      else
        puts "Invalid Entry"
      end
      y = gets.chomp #selecting which ingredient to add or drop
      puts ""
      puts "What do you want to change it to?"
      z = gets.chomp #new ingredient name
      # binding.pry
      var.find(y)
      var.update(name: z)
#       var.find do |ing|
        # if y.downcase == ing.name.downcase
#           # binding.pry
#           # new_ing = "#{gets.chomp}"
#           # self.update(name: new_ing)
#           # binding.pry
#           # puts "end"
#
# # user = User.find_by(name: 'David')
# # user.update(name: 'Dave')
#
#         end
      # end
  end
end
