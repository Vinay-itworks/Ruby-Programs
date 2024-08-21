# Program 3:
# Create a Ruby class called NumberProcessor that takes an array of numbers as input.
# Implement a method calculate_square_root that calculates the square root of each number in
# the array using multiple threads.
# Print the original number and its square root for each number once the calculations are done.



class NumberProcessor
  def self.calculate_square_root(ary)
    result = {}
    for i in ary
      result[i] = i**0.5
    end
    return result
  end
end


puts NumberProcessor.calculate_square_root([25, 49, 121, 144])