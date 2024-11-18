# Working With Comparison Operators
# By: John Stegmaier
# Date: November 18th 2024

x = "Hello"
y = "World"
puts "Assigning x to #{x} and y to #{y}"

# Equality (==)
print  "x == \"Hello\": "
puts x == "Hello"
print "x == y: "
puts x == y

# Not Equal (!=)
print  "x != \"Hello\": "
puts x != "Hello"
print  "x != y: "
puts x != y

x = 100
y = 10.0

puts "reassigning x to #{x} and y to #{y}"

# Greater Than (>)
print "x > y: "
puts x > y
print "y > x: "
puts y > x

# Less Than (<)
print "x < y: "
puts x < y
print "y < x: "
puts y < x

# Type comparison
print "x.eql?(y): "
#this is false because a float does not equal an integer
puts x.eql?(y)
