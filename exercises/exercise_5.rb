require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@all_stores = Store.all

total_revenue = @all_stores.sum(:annual_revenue)

puts "The total revenue combined for all the stores is: #{total_revenue}"

# On the next line, also output the average annual revenue for all stores.
total_stores = @all_stores.count
average_revenue = total_revenue / total_stores

puts "The average_revenue for all stores is: #{average_revenue}"


# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
@well_performing_stores = Store.where('annual_revenue >= ?', 1000000).count

puts "The number of well performing stores is: #{@well_performing_stores}"
