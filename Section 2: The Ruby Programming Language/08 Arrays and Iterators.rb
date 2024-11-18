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