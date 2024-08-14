
# Arithmetic Operators

a = 20
b = 10

puts "Addition", a + b 

puts "Subtraction", a - b 

puts "Multiplication", a * b 

puts "Division", a / b 

puts "Modulus", a % b 

puts "Exponent", a ** b 


# Comparison Operators

a = 20
b = 10

puts a == b

puts a != b 

puts a > b

puts a < b

puts a >= b

puts a <= b

puts a <=> b

# ===, .eql?, equal?

# ===
puts Array(1..10) === 5
# If "a" described a set, would "b" be a member of that set?

# .eql?
# Checks if the values and type are similar
puts 1 == 1.0
puts 1 .eql? 1.0
puts Hash[foo: 1] .eql? Hash[foo: 2]

# equal?
puts 1.equal? 1


# Assignment Operators

a = 10
b = 20

puts c = a

puts b += a # b = b + a 

puts b -= a # b = b - a

puts b *= a # b = b * a

puts b %= a # b = b % a

puts b **= a # b = b ** a

# Parallel Assignment

a, b, c = 10, 20, 30

puts a, b, c

a, b, c = 20, a, b

puts a, b, c

# Bitwise Operators

a = 10
b = 9
# .to_s(2) convert the interger into binary string form
bit_a = a.to_s(2)
bit_b = b.to_s(2)

puts bit_a, bit_b

puts "Binary AND", (a & b).to_s(2) 

puts "Binary OR", (a | b).to_s(2) 

puts "Binary XOR", (a ^ b).to_s(2) 

puts "Binary Ones Complement #{bit_a}", (~a).to_s(2)

puts "Binary Left Shift with #{bit_a}", (a << 1).to_s(2)

puts "Binary Right Shift with #{bit_a}", (a >> 1).to_s(2)


# Logical Operators

a = false
b = true

puts (a and b), (a && b)

puts (a or b), (a || b)

puts a, b

puts not(a), not(b)

# # Ternary Operator

a = 10
b = 20

a > b ? puts "a is greater than b": "a is than than b";

# Range Operator

# .. and ...

puts 1..9  # doesn;t work
puts 1...9 # doesn't work as so

puts (1..9).to_a
puts (1...9).to_a

puts Array(1..9)

# defined? Operator
a = 10
defined? a

# Dot Operator and Double Colon Operator

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
