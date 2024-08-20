# 1. Write Ruby program to get ruby version with patch number.

# puts RUBY_VERSION
# puts RUBY_RELEASE_DATE
# puts RUBY_PLATFORM
# puts RUBY_PATCHLEVEL
# puts RUBY_REVISION
# puts RUBY_DESCRIPTION
# puts RUBY_COPYRIGHT
# puts RUBY_ENGINE

# Sample Output:

# Ruby Version: 2.4.2
# Ruby Patch Level: 198

puts "Ruby Version: #{RUBY_VERSION}"
puts "Ruby Patch Level: #{RUBY_PATCHLEVEL}"


# 2. Write a Ruby program to display the current date and time.

# Sample Output:

# Current Date and Time: 27/12/2017 06:04

puts "Current Date and Time: #{Time.now.strftime("%d/%m/%Y %H:%M")}"


# 3. Write a Ruby program to create a new string which is n copies of a given string where n is a non-negative integer.

# Sample Output:

# a
# aa
# aaa
# aaaa
# aaaaa
print "Enter number for how many copies to print: "
num = gets.chomp.to_i
for i in 1..num do
  puts "a" * i
end


# 4. Write a Ruby program which accept the radius of a circle from the user and compute the parameter and area.

# Sample Output:

# Input the radius of the circle: The perimeter is 31.41592653.
# The area is 78.539816325.

PI = 3.1415926
print "Input the radius of the circle: "
radius = gets.chomp.to_i
perimeter = 2 * PI * radius
area = PI * radius * radius
puts "The perimeter is #{perimeter}"
puts "The area is #{area}"
 

# 5. Write a Ruby program to check whether a string starts with "if"

# Sample Output:

  
# true
# false
  
print "Enter the string: "
string = gets.chomp
puts string.start_with? "if"
 

# 6. Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.
# Sample Output:

# Input your first name: 
# Input your last name: 
# Hello Lanoie Gary

print "Input your first name: "
first_name = gets.chomp
print "Input your last name: "
last_name = gets.chomp
puts "Hello #{first_name} #{last_name}"

# 7. Write a Ruby program to accept a filename from the user print the extension of that.
# Sample Output:

# File name: test.rb
# Base name: test
# Extention: .rb
# Path name: /user/system

print "File name: "
file_name = gets.chomp.split "."
puts file_name.inspect
if file_name.length == 2
  puts "Base name: #{file_name[0]}"
  puts "Extention: #{file_name[1]}"
else
  puts "Invalid name"
end

# 8. Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.
# Sample Output:

# false
# true

print "Input your first name: "
first_name = gets.chomp.reverse
print "Input your last name: "
last_name = gets.chomp.reverse
puts "#{first_name} #{last_name}"

# 9. Write a Ruby program to check three numbers and return true if one or 
# more of them are small. A number is called "small" if it is in the range 1..10 inclusive.
# Sample Output:

# true
# true
# false



# lst = []
# for i in 1..3 do
#   print "Enter number:"
#   i = gets.chomp.to_i
#   if i in 1..10
#     lst << true
#   else
#     lst << false
#   end
# end

# puts lst


# 10. Write a Ruby program to check three numbers and return true if one or the other is small, but not both. 
# A number is called "small" if it is in the range 1..10 inclusive.
# Sample Output:

# true
# true
# false

 

# 11. Write a Ruby program to print the following 'here document'.

# Sample string :
# a string that you "don't" have to escape
# This
# is a ....... multi-line
# heredoc string --------> example
# Sample Output:

# Sample string :
# a string that you "don't" have to escape
# This
# is a ....... multi-line
# heredoc string --------> example

 

# 12. Write a Ruby program to create a new string where "if" is added to the front of a given string. If the string already begins with "if", return the string unchanged.
# Sample Output:

# if else
# if else

print "Enter the string: "
string = gets.chomp
unless string.start_with? "if"
  puts "if #{string}"
else
  puts string
end

 

# 13. Write a Ruby program to create a new string from a given string using the first three characters or whatever is there if the string is less than length 3. Return n copies of the string.
# Sample Output:

# abc
# abcabc
# abc
# abcabc
# abc
# abab



 

# 14. Write a Ruby program which accept the radius of the sphere as input and compute the volume.
# Sample Output:

# Input the radius of the circle: The volume of the sphere is : 392.699081625.

PI = 3.1415926
print "Input the radius of the sphere: "
radius = gets.chomp.to_i
volume = (4/3) * PI * radius**3
puts "The volume of the sphere is : #{volume}"

 

# 15. Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.
# Sample Output:

# nythoP
# aavJ

string = gets.chomp
temp = string[0]
string[0] = string[string.length-1]
string[string.length-1] = temp
puts string

# 16. Write a Ruby program to test whether you are minor (Consider a child unless he or she is less than 18 years old.) or not.
# Sample Output:

# Input your age: You are a minor

print "Input your age: "
age = gets.chomp.to_i

puts age < 18 ? "You are a minor": "You are not a minor"

 

# 17. Write a Ruby program to compute the absolute difference between n and 33 and return double the absolute difference if n is over 33.
# Sample Output:

# 28
# 16


 

# 18. Write a Ruby program to find the maximum of two numbers.
# Sample Output:

# Max = 8
print "Enter number:"
num1 = gets.chomp.to_i
print "Enter number:"
num2 = gets.chomp.to_i

puts "Max = #{num1 < num2 ? num2: num1}"

 

# 19. Write a Ruby program to check two integers and return true if one of them is 20 otherwise return their sum.
# Sample Output:

# true
# false
# true

print "Enter number:"
num1 = gets.chomp.to_i
print "Enter number:"
num2 = gets.chomp.to_i

puts "Result #{num1 == 20 || num2 ==20 ? true : num1+num2}"
 

# 20. Write a Ruby program to find the greatest of three numbers.
# Sample Output:

# y = 5 is greatest.

print "Enter value for first number: "
a = gets.chomp.to_i
print "Enter value for second number: "
b = gets.chomp.to_i
print "Enter value for third number: "
c = gets.chomp.to_i

if a < b
  if b < c
    puts "c = #{c} is greatest"
  else
    puts "b = #{b} is greatest"
  end
elsif a < c  
  puts "c = #{c} is greatest"
else
  puts "a = #{a} is greatest"
end


# 21. Write a Ruby program to check whether a number is within 10 of 100 or 200.
# Sample Output:

# false
# true
# true

 

# 22. Write a Ruby program to compute the sum of the two integers, if the two values are equal return double their sum otherwise return their sum.
# Sample Output:

# 20
# 9

print "Enter number:"
num1 = gets.chomp.to_i
print "Enter number:"
num2 = gets.chomp.to_i

puts "Result #{num1 == num2 ? (num1 + num2)*2 : num1+num2}"
 

# 23. Write a Ruby program to print "Ruby Exercises" 9 times.
# Sample Output:

# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises
# Ruby exercises

for _ in 1..9 do
  puts "Ruby exercises"
end

 

# 24. Write a Ruby program to create a new string from a given string with the last character added at the front and back of the given string. 
# The length of the given string must be 1 or more.
# Sample Output:

# cabcc
# dabcdd
# ajavaa
print "Enter string : "
string = gets.chomp
max = string.length
if max > 1 
  puts string[max-1] + string + string[max-1]
else
  puts "Invalid string"
end


 

# 25. Write a Ruby program to check two temperatures and return true if one is less than 0 and the other is greater than 100.
# Sample Output:

# true
# true
# false


 

# 26. Write a Ruby program to print 34 upto 41.
# Sample Output:

# 34
# 35
# 36
# 37
# 38
# 39
# 40
# 41
# 42

for i in 34..41 do
  puts i
end
 

# 27. Write a Ruby program to print even numbers from 1 to 10.
# Sample Output:

# Even numbers between 2 to 10: 
# 2
# 4
# 6
# 8
# 10

for i in 1..10
  if i%2==0
    print i, " "
  end
end
puts


# 28. Write a Ruby program to print odd numbers from 10 to 1.
# Sample Output:

# Odd numbers between 9 to 1: 
# 9
# 7
# 5
# 3
# 1

i = 10

while i > 0 do
  # puts i
  if i % 2 == 1
    print i, " "
  end
  i -= 1
end
puts



# 29. Write a Ruby program to print the elements of a given array.
# Sample array : ["Ruby", 2.3, Time.now]
# Sample Output:

# true
# true
# false


 

# 30. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Sample Output:

# true
# true
# true
# false

 

# 31. Write a Ruby program to retrieve the total marks where subject name and marks of a student stored in a hash.
# Sample subject and marks : Literature -74,

#  Science – 89, Math-91
# Sample Output:

# Total Marks: 254

 

# 32. Write a Ruby program to print a specified character twenty times.
# Sample Output:

# ********************
# ####################
# @@@@@@@@@@@@@@@@@@@@

 

# 33. Write a Ruby program to test whether a year is leap year or not.
# Sample Output:

# 2012 is leap year
# 1500 is not leap year
# 1600 is leap year
# 2020 is leap year

 

# 34. Write a Ruby program to check whether a string 'Java' appears at index 1 in a given sting, if 'Java' appears return the string without 'Java' otherwise return the string unchanged.
# Sample Output:

# Script
# Oldjava

 

# 35. Write a Ruby program to create a string using the first two characters (if present) of a given string if the first character is 'p' and second one is 's' otherwise return a blank string.
# Sample Output:

# ps

 

# 36 Write a Ruby program to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal.
# Sample Output:

# 7
# 9
# 0

 

# 37. Write a Ruby program to check two integer values and return true if they are both in the range 10..20 inclusive, or they are both in the range 20..30 inclusive.
# Sample Output:

# true
# false
# true
# false

 

# 38. Write a Ruby program to check two positive integer values and return the larger value that is in the range 20..30 inclusive, or return 0 if no number is in that range.
# Sample Output:

# 0
# 29
# 30
# 0

 

# 39. Write a Ruby program to check a given string contains 'i' characters.
# Sample Output:

# false
# true
# true
# true

 

# 40. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Sample Output:

# acegj
# aceg
# ace
# ac
# a

 

# 41. Write a Ruby program to count the number of 5's in a given array.
# Sample Output:

# 0
# 1
# 2

 

# 42. Write a Ruby program to check whether one of the first 5 elements in a given array of integers is a 7. The array length may be less than 5.
# Sample Output:

# 0
# 1
# 1

 

# 43. Write a Ruby program to check whether the sequence of numbers 10, 20, 30 appears anywhere in a given array of integers.
# Sample Output:

# true
# true
# false

 

# 44. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Sample Output:

# 16
# 20
# 37

 

# 45. Write a Ruby program to check two given integers and return true if either one is 11 or their sum or difference is 11 otherwise return false.
# Sample Output:

# true
# false
# true
# true
# false

 

# 46. Write a Ruby program to check a given non-negative number and return true if number is within 2 of a multiple of 10.
# Sample Output:

# true
# false
# true
# true
# true

 

# 47. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Sample Output:

# true
# true
# true
# false

 

# 48. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.
# Sample Output:

# true
# true
# false

 

# 49. Write a Ruby program to check three given integers and return true if one of them is 20 or more less than one of the others.
# Sample Output:

# false
# true
# true

 

# 50. Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0.
# Sample Output:

# 12
# 110
# 0

 

# 51. Write a Ruby program to check two given integers, each in the range 10..99, return true if there is a digit that appears in both numbers.
# Sample Output:

# false
# true
# true

 

# 52. Write a Ruby program to check three given integers and return their sum. However, If one of the values is the same as another of the values, it does not count towards the sum.
# Sample Output:

# 0
# 7
# 7
# 7
# 6

 

# 53. Write a Ruby program to check three given integers and compute their sum. However, if one of the values is 17 then it does not count towards the sum and values to its right do not count.
# Sample Output:

# 15
# 10

 

# 54. Write a Ruby program to check three given integers x, y, z and return true if one of y or z is close (differing from a by at most 1), while the other is far, differing from both other values by 3 or more.
# Sample Output:

# true
# false
# false

 

# 55. Write a Ruby program to check two given integers and return the larger value. However if the two values have the same remainder when divided by 5 then return the smaller value and if the two values are the same, return 0.
# Sample Output:

# 12
# 110
# 0
