# Hashing a.k.a dictionaries
# By: John Stegmaier
# Date: November 18th 2024

# Here is how you make a Key:value pair
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
p sample_hash

# example of retrieving a value from a hash
my_details = {'name' => 'John', 'age' => 29, 'favcolor' => 'red'}
p "my favorite color is #{my_details['favcolor']}"

# Rails gives you something called a symbol (not a String however)
another_hash = {username: "Jupdown", password: "totallymypassword", uID: 1}
p another_hash
p another_hash[:username]

#retrieve just the keys or values of a hash:
p another_hash.keys
p another_hash.values

# iterating over a hash
another_hash.each do |key, value|
  puts "The class for the key is #{key.class} and the value is #{value.class}"
end

# Adding items to a hash
another_hash[:proglang] = 'ruby'
another_hash.each { |key, value| puts "#{key.to_s.capitalize}: #{value}" }

# Selecting only values of a certain type (String)
p another_hash.select { |key, value| value.is_a?(String)}

# Remove values from a hash that are just strings
another_hash.each {|key, value| another_hash.delete(key) if value.is_a?(String)} #note that deleting the key also deletes the value
puts "\nDeleting all String Values from the hash"
p another_hash