# Say hello world in multiple ways
# By: John Stegmaier
# Date: November 17th 2024

# String concatination
first_name = "John"
last_name = "Stegmaier"
puts first_name + " " + last_name

# Note: there's a difference between single and double parenthesis; Single parenthesis will not work for String interpolation
sentence = 'My name is John'
p sentence

# String interpolation example
puts "my first name is #{first_name} and my last name is #{last_name}"

# Variable assignment
new_first_name = first_name   # new first name is pointing at the same value as first_name now - not the variable
puts new_first_name
first_name = "Joshua"   # re-assigning first_name will not alter new_first_name as it is still pointing at the original value we gave it
puts "new_first_name is #{new_first_name} and first_name is #{first_name}"

# Escaping
puts "the new first name is \#{new_first_name}"
puts "I always say \"Hackers can never be stopped, only slowed down\""