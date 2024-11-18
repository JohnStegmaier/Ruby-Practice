# Getting Input From The User
# By: John Stegmaier
# Date: November 17th 2024

puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, you said your first name is #{first_name}."

puts "Enter a number to multiply by 2"
input = gets.chomp

# this is going to take the string value and just print it twice (String * 2)
puts input * 2

# this converts the input strnig to an integer and then multiplies it by two (Int * 2)
puts input.to_i * 2

# Homework assignment
puts "What is your last name?"
last_name = gets.chomp
puts "Your full name is #{first_name} #{last_name}"
puts "Your full name reversed is #{last_name.reverse} #{first_name.reverse}"
lengthOfName = first_name.length + last_name.length
puts "Your name has #{lengthOfName} characters in it."