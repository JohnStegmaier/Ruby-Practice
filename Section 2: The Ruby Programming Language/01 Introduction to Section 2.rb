# Say hello world in multiple ways
# By: John Stegmaier
# Date: November 17th 2024

# Simple output using put and a string
puts "Hello World"

# Simple output using p. p also provides a return value in doing this`
p "Hello World"

# Simple output using print (unlike puts, it doesn't add a new line)
print "Hello World\n"

# Using a variable
greeting = "Hello World"
puts greeting

# Using a method
def say_hello(things_to_say)
  puts things_to_say
end

say_hello("Hello World")