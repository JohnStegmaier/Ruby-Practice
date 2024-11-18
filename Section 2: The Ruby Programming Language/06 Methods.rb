# Working With Comparison Operators
# By: John Stegmaier
# Date: November 18th 2024

#NOTE: methods have to be defined ahead of their use in ruby or else your application will throw a fit
# at runtime 🥲

# Here is an example of a method. We define it with def and then the method names and then the variables.
# the return CAN be provided by using return {expression} but in ruby, if you don't use return, the return
# value is implied based off of the last operation / variable / expression / whatever. So in the below case,
# first_num * second_num will be the return value
def multiply (first_num, second_num)
  first_num.to_f * second_num.to_f
end

def subtract(number_one, number_two)
  return number_one.to_f - number_two.to_f
end

def add(number_one, number_two)
  return number_one.to_f + number_two.to_f
end
def divide(number_one, number_two)
  return number_one.to_f / number_two.to_f
end

def modulus(number_one, number_two)
  return number_one.to_f % number_two.to_f
end

puts "Simple calculator"
20.times { print "-" }

puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
puts "The first number subtracted by the second number is: #{subtract(first_number, second_number)}"
puts "The first number added to the second number is: #{add(first_number, second_number)}"
puts "the first number mod the second number is: #{modulus(first_number, second_number)}"

