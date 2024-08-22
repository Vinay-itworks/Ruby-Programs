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

def get_array_data(n)
  ary = []
  for i in 1..n
    print "#{i} Get square root of : "
    num = gets.chomp.to_i
    if num == 0
      puts "Enter proper value. This value will not be considered."
    else
      ary << num
    end
  end
  return ary
end
     


# puts NumberProcessor.calculate_square_root([25, 49, 121, 144])

switch = ""

until switch == "quit" || switch == "q"
  print "SQUARE ROOTs\nHow many values to get or quit : "
  input = gets.chomp
  num = input.to_i

  if num > 0
    ary = get_array_data(num)
    puts NumberProcessor.calculate_square_root(ary)
  elsif input == "quit" || input == "q"
    switch = "quit"
  else
    puts "Enter proper value."
    redo
  end
end
