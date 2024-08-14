# 1.Find Armstrong number

num = gets.chomp
ary = num.split('')
puts ary
sum = 0
for i in ary do
  sum += i.to_i**3
end
puts num, sum
if num.to_i == sum
  puts num + " is Armstrong number."
end



# 2. Palindrome number/string

series = [12332, 1234 ,"oto", 121, "ubuntu", "txt"]
palindrome = []
for ele in series do
  # puts ele.to_s.reverse
  if ele.to_s.reverse == ele.to_s
    palindrome << ele
  end
end
puts palindrome.inspect

# 3.Sum of digits
print "Number of digits to add: "
num_of_digit = gets.chomp.to_i
sum = 0
for n in 1..num_of_digit
  print "Enter digit"
  sum += gets.chomp.to_i
end
puts "Sum of all the digits" + sum.to_s

# 4.Factorial of number
num = gets.chomp.to_i
factorial = 1
for i in 1..num
  factorial = factorial * i
end
puts "Factorial of #{num} is #{factorial}."

# 5. Fibonacci series
range = gets.chomp.to_i
series = []
for i in 0..range-1 do
  if i == 0
    series << 0
  elsif i == 1
    series << 1
  else
    series << series[i-2]+series[i-1]
  end
end

puts series.inspect


# 6.Multiplication table

num = 1
table = gets.chomp.to_i

while num <= 10 do
  puts "#{table} X #{num} = #{table*num}"
  num += 1
end

# 7.find greater number between 3
# a vs c

print "Enter value for first number: "
a = gets.chomp.to_i
print "Enter value for second number: "
b = gets.chomp.to_i
print "Enter value for third number: "
c = gets.chomp.to_i

if a < b
  if b < c
    puts "#{c} is greater than #{a}, #{b}"
  else
    puts "#{b} is greater than #{a}, #{c}"
  end
elsif a < c  
  puts "#{c} is greater than #{a}, #{b}"
else
  puts "#{a} is greater than #{b}, #{c}"
end

# 8.Even or odd between range.
min = gets.chomp.to_i
max = gets.chomp.to_i
even = []
odd = []
for i in min..max
  if i%2==0
    even << i
  else
    odd << i
  end
end

print "Enter 1 for odd number or 2 for even numbers in the range: "
showing = gets.chomp
if showing == "1"
  puts odd.inspect
elsif showing == "2"
  puts even.inspect
else 
  puts "Invalid input"
end


# 9. Prime number
number = gets.chomp.to_i
is_prime = true
for i in 2..(number/2)+1 do    
  if number%i == 0 
    is_prime = false
    break
  end
end
if number < 0
  is_prime = false
end

is_prime ? puts "#{number} is a prime number" : puts "#{number} is not a prime number"


# 10. Grade of student between range.
# name 5 inputs subs
# name, obtainedmarks, total marks, avg, grade.
print "Enter your name: "
name = gets.chomp
subjects = {"English": 0, "Hindi":0, "Science":0, "Maths":0, "Social Science":0}
total_marks = 0
begin
  for i in subjects.keys do
    print "Enter marks #{i} : "
    marks = gets.chomp.to_i
    if marks == 0
      raise "Give exam again"
      break
    end
    if marks > 100
      raise "Marks out of range"
      break
    end
    subjects[i] = marks
    total_marks += marks
  end

  puts "Dear #{name}"
  for i in subjects.keys do
    puts "Marks in #{i} : #{subjects[i]}"
  end

  puts "Total marks: #{total_marks}"
  avg = total_marks/subjects.length
  puts "Average marks: #{avg}"
  case avg
  when 1..35
    puts "Failed"
  when 36..50
    puts "Grade C"
  when 51..70
    puts "Grade B"
  when 71..90
    puts "Grade A"
  when 91..100
    puts "Grade A+"
  else
    puts "invalid input"
  end
rescue Exception => exception
  puts exception
end

# good
result = 1 -
         2

long_string = 'First part of the long string' \
              ' and second part of the long string'

puts result.inspect, long_string.inspect