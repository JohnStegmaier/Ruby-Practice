# Authenticator application
# By: John Stegmaier
# Date: November 18th 2024

CONSOLE_LINE_WIDTH = 64
def draw_top_of_box
  print "╔"
  (CONSOLE_LINE_WIDTH-2).times {print "═"}
  print "╗\n║"
  (CONSOLE_LINE_WIDTH-46).times {print " "}
  print " Simple Authenticator"
  (CONSOLE_LINE_WIDTH-47).times {print " "}
  print "━ □ ╳ ║\n╟"
  (CONSOLE_LINE_WIDTH-2).times {print "─"}
  print "╢\n"
end
def middle_of_box_with_text(text)
  print "║ "
  print text.to_s
  ((CONSOLE_LINE_WIDTH-3) - text.length).times {print " "}
  print "║\n"
end
def draw_bottom_of_box
  print "╚"
  (CONSOLE_LINE_WIDTH-2).times {print "═"}
  print "╝\n"
end

def convert_text_to_arrays_of_size(line_width, text)
  words = text.split(" ")
  word_builder = ""
  return_value = []

  words.each do |word|
    if word_builder.empty? # Handle empty word_builder
      if word.length > line_width
        return_value.push(word) # Push long word directly if it exceeds line_width
      else
        word_builder = word
      end
    elsif (word_builder + " " + word).length <= (line_width - 4) # Account for spacing
      word_builder += " " + word
    else
      return_value.push(word_builder) # Push built line
      word_builder = word # Start a new line with the current word
    end
  end

  return_value.push(word_builder) unless word_builder.empty?
  return return_value
end

def output_text_in_box(text)
  text_arrays = []

  text.each do |line|
    return_from_arrays = convert_text_to_arrays_of_size(CONSOLE_LINE_WIDTH, line)
    return_from_arrays.each do |entry|
      text_arrays.push(entry.to_s)
    end
  end

  draw_top_of_box
  text_arrays.each do |line|
    middle_of_box_with_text(line.to_s)
  end
  draw_bottom_of_box
end

def authenticate(database, username, password)
  database.select {|user| (user[:username].eql?(username) && user[:password].eql?(password))}
end

users = [
  {username: "john", password: "Password1"},
  {username: "jack", password: "Password2"},
  {username: "arya", password: "Password3"},
  {username: "jonshow", password: "Password4"},
  {username: "heisenberg", password: "Password5"}
]

login_attempts = 0

while login_attempts < 3 do
output_text_in_box(["Welcome to the authenticator", "This program will take input from the user and compare password.", "If password is correct, you will get back the user object."])
print "Please enter a username:"
username = gets.chomp
print "\nPlease enter a password:"
password = gets.chomp

if authenticate(users, username, password).empty?
  puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  login_attempts += 1
  puts "\e[#{31}m#{"VALIDATION FAILURE!!!!"}\e[0m"
  puts "\e[#{31}m#{"You have #{3-login_attempts} attempts left."}\e[0m"
  puts "\n\n"
else
  puts "Validation returns: #{authenticate(users, username, password)}"
end

# We will learn
# Hash, Array, Branching, While loops and designing program execution flow
end

puts "\e[#{31}m#{"OUT OF LOGIN ATTEMPTS. TERMINATING APPLICATION"}\e[0m"