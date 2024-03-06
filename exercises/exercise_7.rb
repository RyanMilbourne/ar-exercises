require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# 1) Add validations to two models to enforce the following business rules:

# Employees must always have a first name present (added)
# Employees must always have a last name present (added)
# Employees have a hourly_rate that is a number (integer) between 40 and 200 (added)
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store) (added)
# Stores must always have a name that is a minimum of 3 characters (added)
# Stores have an annual_revenue that is a number (integer) that must be 0 or more (added)


# 2) Ask the user for a store name (store it in a variable)
print "Give me a store name! "
user_store_name = gets.chomp

# 3) Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
@users_store = Store.create(name: user_store_name)
@users_store.save

# 4) Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if @users_store.errors.any?
  puts "There are errors:"
  @users_store.errors.full_messages.each do |message|
    puts message
  end
end
