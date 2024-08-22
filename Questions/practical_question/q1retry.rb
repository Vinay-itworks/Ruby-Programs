# Program 1:
# Create a Ruby class named Calculator that performs basic arithmetic operations like(addition,
# subtraction, multiplication, division).
# However, implement exception handling to deal with potential errors such as division by zero
# and invalid input. If any exception occurs during the operation, catch it, and display a meaningful
# error message to the user.

class Calculator

  def addition(num1, num2)
    return num1 + num2
  end

  def substraction(num1, num2)
    return num1 - num2
  end

  def multiple(num1, num2)
    return num1 * num2
  end

  def division(num1, num2)
    return num1 / num2
  end
end



switch = ""
until switch == "quit"

  obj = Calculator.new
  print "Enter operation to perform\n1 for Addtion \n2 for Substraction\n3 for Multiplication\n4 for Division\nHow may I help you?(1, 2, 3, 4 or quit) : "
  operation = gets.chomp
  if operation == "quit" || operation == "q"
    switch = "quit"
    break
  end

  operation = operation.to_i

  print "Enter first value : "
  num1 = gets.chomp.to_i
  print "Enter second value : "
  num2 = gets.chomp.to_i
  # puts num1, num2
  if num1 == 0 || num2 == 0
    puts "Operations with string and zero not performed"
    redo
  end

  print "Answer : "
  if operation == 1
    puts obj.addition(num1, num2)
  elsif operation == 2
    puts obj.substraction(num1, num2)
  elsif operation == 3
    puts obj.multiple(num1, num2)
  elsif operation == 4
    puts obj.division(num1, num2)
  else
    puts "Enter proper value."
    redo
  end
end

# puts "Aba1".to_i