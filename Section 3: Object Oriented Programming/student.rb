# Student Class
# By: John Stegmaier
# Date: November 19th 2024
class Student
  # When defining variables in a class in Ruby, you want to prefex them with an @ symbol
  # This makes them an "Instance Variable" as we work with instances of a class
  @first_name
  @last_name
  @email
  @username
  @password

  # by default, classes in Ruby have a to string method (like java).
  # We can override it by doing the following:
  def to_s
    "First name: #{@first_name}" # We are going to return the instance variable of the first name here
  end

  def set_first_name(new_first_name)
    @first_name = new_first_name
  end

end

# We create a new object of a type of class by using .new
john = Student.new
puts john #this will return the memory address of the object (until we override to_s)

john.set_first_name("John")
puts john