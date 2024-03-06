require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# 1) Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
s = Store.create( name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)

# Whistler (annual_revenue of 1900000 carries men's apparel only)
w = Store.create( name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)

# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
y = Store.create( name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)


# 2) Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
@mens_stores = Store.where(mens_apparel: true)


# 3) Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "Store name: #{store.name} \n Annual Revenue: #{store.annual_revenue}"
end

# 4) Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores_less_than_a_million_rev = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Loop through these stores and output their names
@womens_stores_less_than_a_million_rev.each do |store|
  puts "Store Name: #{store.name}"
end
