# Dial book
# By: John Stegmaier
# Date: November 18th 2024

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
  "toronto" => "416",
  "vancouver" => "604",
}

# Get city anmes from the hash
def get_city_names(somehash)
  list_of_cities = []
  somehash.each { |key, value| list_of_cities.push(key)}
  list_of_cities
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.has_key?(key) ? somehash[key] : "not in the provided dictionary"
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.upcase
  break if answer != "Y"

  puts "Please select a city from the list:"
  get_city_names(dial_book).each {|entry| puts entry.capitalize}
  print "Selection:"
  city = gets.chomp.downcase

  puts "The area code for #{city} is #{get_area_code(dial_book, city)}."
end