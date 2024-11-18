# Working With Numbers
# By: John Stegmaier
# Date: November 18th 2024

# Integer division working nicely
puts 10/2

# Integer division cutting off decimal
puts 10/4

# Division using floats
puts 10.0 / 4
puts 10 / 4.0
puts 10 / 4.to_f

# Order of operation is important
puts (10/4).to_f

# Mixing numbers and Strings
# The operation "5" * 2 is legal but 2 * "5" is not because you can't multiply something by a string
puts "I am a line"
puts "-" * 20
puts "I am a different line after a divider"
20.times { print '-' }
puts ""


# Generating Random Numbers
20.times {puts rand(100)}