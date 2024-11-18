# Working With Numbers Assignment
# an overly complex calculator with pretty console output
# By: John Stegmaier
# Date: November 18th 2024

CONSOLE_LINE_WIDTH = 64
def draw_top_of_box
  print "╔"
  (CONSOLE_LINE_WIDTH-2).times {print "═"}
  print "╗\n║"
  (CONSOLE_LINE_WIDTH-44).times {print " "}
  print " Simple Calculator"
  (CONSOLE_LINE_WIDTH-46).times {print " "}
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

def add(number_one, number_two)
  return number_one.to_f + number_two.to_f
end

def subtract(number_one, number_two)
  return number_one.to_f - number_two.to_f
end

def multiply(number_one, number_two)
  return number_one.to_f * number_two.to_f
end

def divide(number_one, number_two)
  return number_one.to_f / number_two.to_f
end

def modulus(number_one, number_two)
  return number_one.to_f % number_two.to_f
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

output_text_in_box(["Hello and welcome to the calculator application. Please enter your desired operation:", "▪ Addition (+)", "▪ Subtraction (-)", "▪ Multiplication (*)", "▪ Division (/)", "▪ Modulus (%)" ])
print "Selection: "
operation = gets.chomp


puts "Enter the first number:"
num1 = gets.chomp

puts "Enter the second number:"
num2 = gets.chomp

result = case operation.upcase
         when "ADDITION", "+", "ADD"
           add(num1, num2)
         when "SUBTRACTION", "-", "SUB", "SUBTRACT"
           subtract(num1, num2)
         when "MULTIPLICATION", "*", "MULT", "MULTIPLY"
           multiply(num1, num2)
         when "DIVISION", "/", "DIV", "DIVIDE"
           if num2 != 0
             divide(num1, num2)
           else
             "Error: Division by zero"
           end
         when "MODULUS", "%", "MOD"
           modulus(num1, num2)
         else
           "Invalid operation!"
         end

puts "Result: #{result}"