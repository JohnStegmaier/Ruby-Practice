# Branching
# By: John Stegmaier
# Date: November 18th 2024

condition = true
another_condition = false

# if/else
if condition || another_condition
  puts "This evaluated to true"

# else
else
  puts "this evaluated to false"
end

# if / else blocks are terminated with the end statement
# when a branch is executed, it will jump past the rest and go straight to the end
# this below text is outside of the branch and will therefore be executed regardless
puts "outside the branch statement"