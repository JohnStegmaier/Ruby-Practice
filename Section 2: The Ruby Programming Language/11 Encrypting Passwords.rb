# Encrypting Passwords
# By: John Stegmaier
# Date: November 20th 2024
require 'bcrypt'

my_password = BCrypt::Password.create("my_password")
#=> "$2a$12$ejKYvts8kQ/Og5hI0tKM.OuBMoqpNkEt780aTfa6wTHcN6eXErqmS"
#=> "$2a$12$Q4OrpwtAr1i02WFygffHz.EuLRsj4kLAv/RtziUxNDzncbVbDQW/6"
puts my_password

my_password = BCrypt::Password.new("$2a$12$Q4OrpwtAr1i02WFygffHz.EuLRsj4kLAv/RtziUxNDzncbVbDQW/6")
puts my_password
puts my_password == "my_password"

my_password_1 = BCrypt::Password.create("my_password")
my_password_2 = BCrypt::Password.create("my_password")

25.times{print "┄┄┄"}
print "\n-"

puts my_password
puts my_password_1
puts my_password_2
puts my_password_1 == my_password_2

# puts my_password.version               #=> "2a"
# puts my_password.cost                  #=> "12"
# puts my_password == "my_password"      #=> true
# puts my_password == "not my password"  #=> false

users = [
  {username: "john", password: "Password1"},
  {username: "jack", password: "Password2"},
  {username: "arya", password: "Password3"},
  {username: "jonshow", password: "Password4"},
  {username: "heisenberg", password: "Password5"}
]
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)
