# Program 1:
# Create a Ruby class named Calculator that performs basic arithmetic operations like(addition,
# subtraction, multiplication, division).
# However, implement exception handling to deal with potential errors such as division by zero
# and invalid input. If any exception occurs during the operation, catch it, and display a meaningful
# error message to the user.

class Calculator

  def self.addition(num1, num2)
    begin
      return num1 + num2
    rescue TypeError => exception
      return "String can't be coerced into Integer"
    end
  end

  def self.subtraction(num1, num2)
    begin
      return num1 - num2
    rescue TypeError => exception
      return "String can't be coerced into Integer"
    end
  end

  def self.multiple(num1, num2)
    begin
      return num1 * num2
    rescue TypeError => exception
      return "String can't be coerced into Integer"
    end
  end

  def self.division(num1, num2)
    begin
      return num1 / num2
    rescue ZeroDivisionError => exception
      return "Division with zero cannot produce any answer."
    rescue TypeError => exception
      return "String can't be coerced into Integer"
    end
  end
end



puts Calculator.addition(2, 3)

puts Calculator.subtraction(2, 3)

puts Calculator.multiple(4, 5)

puts Calculator.division(10, 5)

puts Calculator.division(5, 10)

puts Calculator.division(5, 0)

puts Calculator.division(2, "e")