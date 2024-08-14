# Control Statements

# if else statement

a = 1
b = 3

if a < b
  puts "#{b} is greater than #{a}"

elsif a > b
  puts "#{a} is greater than #{b}"

elsif a = b
  puts "#{a} is equal to #{b}"

else
  puts "Can't let the difference."

end

# if modifier

people = true
puts "Hi there Everyone!" if people

# unless Statement

error_solved = false

unless error_solved
  puts "Unsolved error"

else
  puts "Good to go"

end

# unless modifier

$var = true
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" if $var
print "4 -- Value is set\n" unless $var

# case Statement

<<-SYNTAX
case expression
[when expression]
  [code]
else code
end
SYNTAX

age = 17

case age
when 0..2
  puts "New born"
when 3..6
  puts "little child"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts "adult"
end

# Looping Statements

# while statement

num = 1
table = 2

while num <= 10 do
  puts "#{table} X #{num} = #{table*num}"
  num += 1
end

# while modifier

num = 1
begin
  puts num
  num += 1
end while num <= 10;


# until Statement

num = 1
table = 2

until num > 10 do
  puts "#{table} X #{num} = #{table*num}"
  num += 1
end

# until modifier

num = 1
begin
  puts num
  num += 1
end until num > 10;

# for statement

for i in 0..10
  puts "2 x #{i} = #{2*i}"
end

# for is equivalent to

[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|i| puts "2 X #{i} = #{2*i}"}


break
next
redo
retry


puts Array('a'..'d')

digits = Array(0..9)

puts digits

puts digits.include?(4)

puts digits.map {|v| v**2}

puts digits

puts Time.new.inspect

