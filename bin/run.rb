require_relative '../config/environment'
require 'pry'

def prompt
  puts "What would you like to do?"
  puts "1. View all Recipes"
  puts "2. Log into Account"
end

def option_1
  input = gets.chomp
puts "Select a recipe!"
  if input == "1"
    Recipe.all.each_with_index {|x, index| puts "#{index}. #{x.name}" }
  end
end

puts "Welcome to Tastybook!"
prompt
option_1


# if input == "1"
#   Recipe.all.each_with_index {|x, index| puts "#{index}. #{x.name}" }
# end
