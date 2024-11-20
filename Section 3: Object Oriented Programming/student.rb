# Student Class
# By: John Stegmaier
# Date: November 19th 2024
class Student
  # When defining variables in a class in Ruby, you want to prefex them with an @ symbol
  # This makes them an "Instance Variable" as we work with instances of a class

  attr_accessor :first_name, :last_name, :username, :password #creates getters and setters (read-and-write)
  attr_reader :email #creates getters ONLY (read-only)

  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  #Constructors in Ruby
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # by default, classes in Ruby have a to string method (like java).
  # We can override it by doing the following:
  def to_s
    # We are going to return the instance variable of the first name here
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end

  # def set_first_name(new_first_name)
  #   @first_name = new_first_name
  # end
  #
  # def set_last_name=(new_last_name)
  #   @last_name = new_last_name
  # end
  #
  # def first_name
  #   @first_name
  # end


end

# We create a new object of a type of class by using .new
# john = Student.new
# puts john #this will return the memory address of the object (until we override to_s)
#
# # john.set_first_name("John")
# john.first_name = "John"
# john.last_name = "Stegmaier"
# # john.email = "John@stegmaier.dev"
# john.username = "jstegmaier"

john = Student.new("John", "Stegmaier", "john@stegmaier.dev", "jstegmaier", "SuperSecret123")
puts john
# puts john.first_name
# puts john.last_name
# puts john.email
# puts john.username