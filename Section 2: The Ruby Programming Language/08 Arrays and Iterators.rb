# Arrays and Iterators
# By: John Stegmaier
# Date: November 18th 2024

# Array Example
sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts sample_array # each element on it's own line as puts is short for put string
print sample_array # array outputted as it is all on one line
puts "" # newline
p sample_array # p includes a new line

p sample_array.last #prints the last element of the array

# Using a Range
range_array = 1..100
p range_array.class #note that this is a class of type "range"
p range_array.to_a.shuffle #print it as an array and shuffle the values

#we can persist the mutaed order by assigning it to a variable
shuffled_array = range_array.to_a.shuffle!
p shuffled_array

# Mutating the caller example
shuffled_array.shuffle
# the array was as before:
p shuffled_array
# now we mutate the caller and see that it's different
shuffled_array.shuffle!
p shuffled_array

# String array
string_range = "a".."z"
p string_range.to_a
string_range_array = string_range.to_a
p string_range_array

#add item to end of array (there's more than one way)
sample_array << 10
sample_array.append("John")
p sample_array

#add items to the front of array
sample_array.unshift("John")
p sample_array
p sample_array.uniq # this will remove duplicate values in an array
p sample_array #note that without the bang it doesn't save the state
sample_array.uniq! #muting the caller
p sample_array #now the duplicate entries have been removed

# Checking to see if an array is empty
p sample_array.empty?
sample_empty_array = []
p sample_empty_array.empty?

# Checking to see if something is stored in the array
p sample_array.include?("John")

# We can also use arrays like a stack / queue
sample_array.push("John2")
p sample_array
sample_empty_array << sample_array.pop
p sample_empty_array
p sample_array

puts "Joining array together as a string:"
string_of_array = sample_array.join("-")
p string_of_array

puts "Splitting string back into an array:"
recreated_array = string_of_array.split("-")
p recreated_array

puts "Get an array of strings going really fast:"
p %w(My name is John and Ruby is really fun so far)

# this only works I think in irb; didn't work here
# variable_that_grabs_previous_expression = _
# p variable_that_grabs_previous_expression

