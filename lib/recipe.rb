class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_by_name
    self.ingredients.map { |x|  x.name }
    # Recipe.find(1).ingredients.map { |x| x.name }
  end

  def ingredients_by_index
    self.ingredients.each_with_index { |x, index| puts "#{index + 1}. #{x.name}"}
  end

  def remove_recipe
    binding.pry
  end

end
