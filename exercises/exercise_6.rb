require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Add some data into employees:
@store1 = Store.find(1)
@store2 = Store.find(2)
@store4 = Store.find(4)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Hulk", last_name: "Hogan", hourly_rate: 18)
@store1.employees.create(first_name: "The", last_name: "Undertaker", hourly_rate: 666)
@store1.employees.create(first_name: "Steve", last_name: "Austin", hourly_rate: 50)

@store2.employees.create(first_name: "Stinky", last_name: "Stevenson", hourly_rate: 10)
@store2.employees.create(first_name: "Ryan", last_name: "Milbourne", hourly_rate: 100000)
@store2.employees.create(first_name: "Jerry", last_name: "Srpinger", hourly_rate: 69)
@store2.employees.create(first_name: "Annie", last_name: "Wells", hourly_rate: 9999999)

@store4.employees.create(first_name: "David", last_name: "Bautista", hourly_rate: 100)
@store4.employees.create(first_name: "Jenny", last_name: "Slater", hourly_rate: 100)
@store4.employees.create(first_name: "Shane", last_name: "Gillis", hourly_rate: 25)
@store4.employees.create(first_name: "Johan", last_name: "Von Winkle Stinkle", hourly_rate: 16)


# Test that Employees (first & last names) exist in assigned store

store_1_employee_names = @store1.employees.map { |employee| "#{employee.first_name} #{employee.last_name}"}

puts "The employees at #{@store1.name} are:"
store_1_employee_names.each { |name| puts name }

store_2_employee_names = @store2.employees.map { |employee| "#{employee.first_name} #{employee.last_name}"}

puts "The employees at #{@store2.name} are:"
store_2_employee_names.each { |name| puts name }

store_4_employee_names = @store4.employees.map { |employee| "#{employee.first_name} #{employee.last_name}"}

puts "The employees at #{@store4.name} are:"
store_4_employee_names.each { |name| puts name }
