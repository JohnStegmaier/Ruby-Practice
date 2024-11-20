# Encrypting Passwords
# By: John Stegmaier
# Date: November 20th 2024
require 'bcrypt'

my_password = BCrypt::Password.create("my_password")
#=> "$2a$12$ejKYvts8kQ/Og5hI0tKM.OuBMoqpNkEt780aTfa6wTHcN6eXErqmS"

puts my_password
puts my_password.version               #=> "2a"
puts my_password.cost                  #=> "12"
puts my_password == "my_password"      #=> true
puts my_password == "not my password"  #=> false