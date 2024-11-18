# Working With Comparison Operators
# By: John Stegmaier
# Date: November 18th 2024

puts "Simple calculator"
20.times { print "-" }

puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted by the second number is: #{first_number.to_f - second_number.to_f}"
puts "The first number added to the second number is: #{first_number.to_f + second_number.to_f}"
puts "the first number mod the second number is: #{first_number.to_f % second_number.to_f}"

# Here is an example of a method. We define it with def and then the method names and then the variables.
# the return CAN be provided by using return {expression} but in ruby, if you don't use return, the return
# value is implied based off of the last operation / variable / expression / whatever. So in the below case,
# first_num * second_num will be the return value
def multiply (first_num, second_num)
  first_num.to_f * second_num.to_f
end