# Authenticator application
# By: John Stegmaier
# Date: November 18th 2024

users = [
  {username: "john", password: "Password1"},
  {username: "jack", password: "Password2"},
  {username: "arya", password: "Password3"},
  {username: "jonshow", password: "Password4"},
  {username: "heisenberg", password: "Password5"}
]

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password."
puts "If password is correct, you will get back the user object."

# We will learn
# Hash, Array, Branching, While loops and designing program execution flow