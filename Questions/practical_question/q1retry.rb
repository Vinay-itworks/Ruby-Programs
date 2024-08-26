# Program 1:
# Create a Ruby class named Calculator that performs basic arithmetic operations like(addition,
# subtraction, multiplication, division).
# However, implement exception handling to deal with potential errors such as division by zero
# and invalid input. If any exception occurs during the operation, catch it, and display a meaningful
# error message to the user.

class Calculator

  def addition(num1, num2)
    num1 + num2
  end

  def substraction(num1, num2)
    num1 - num2
  end

  def multiple(num1, num2)
    num1 * num2
  end

  def division(num1, num2)
    begin
      num1 / num2
    rescue ZeroDivisionError => exception
      "Division with zero cannot produce any answer."
    end
  end
end



loop do

  obj = Calculator.new
  30.times {print "-"}
  puts 
  puts "Enter operation to perform"
  25.times {print "-"}
  puts
  print "1 for Addtion \n2 for Substraction\n3 for Multiplication\n4 for Division\nHow may I help you?(1, 2, 3, 4 or quit) : "
  operation = gets.chomp.downcase
  
  break if operation == "quit" || operation == "q"

  unless Array(1..4).include? operation.to_i
    puts "Enter valid operation."
    redo
  end

  operation = operation.to_i

  print "Enter first value : "
  num1 = gets.chomp
  print "Enter second value : "
  num2 = gets.chomp
  # puts num1, num2
  if num1.to_i == 0 || num2.to_i == 0
    unless num1 == "0" || num2 == "0"
      puts "Operations with string not performed."
      redo
    end
  end

  num1 = num1.to_f
  num2 = num2.to_f

  print "Answer : "
  if operation == 1
    puts obj.addition(num1, num2)
  elsif operation == 2
    puts obj.substraction(num1, num2)
  elsif operation == 3
    puts obj.multiple(num1, num2)
  elsif operation == 4
    puts obj.division(num1, num2)
  end
end

# puts "Aba1".to_i