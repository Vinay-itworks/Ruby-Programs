#datatypes
#booleans
<<-Comment
is_determined = true
is_received = false

puts is_determined, is_received
puts is_determined.class 
puts is_received.class 

#numbers
first_var = 123
second_var = -123
third_var = 123.4567

puts first_var, second_var, third_var
puts first_var.class, second_var.class, third_var.class

# strings

first_var = "Hello World!"
second_var = "How are you?"

puts first_var, second_var
puts first_var.class



# symbols

:first_var

puts :first_var
puts :first_var.class

#string can be converted to symbols with to_sym

puts "Hello".class
puts "Hello".to_sym.class


#arrays
first_array = [1, 2, 3, 4, 5]
second_array = ["Hello", 123, true, :name]
puts first_array, second_array
puts first_array.class, second_array.class

#accessing array elements
puts first_array[1]
puts second_array[2]


#hashes

first_hash = {"one"=>"foo", "two"=>"bar", "three"=>"joe", "four"=>"doe"}
last_hash = {:one=>"foo", :two=>"bar", :three=>"joe", :four=>"doe"}

puts first_hash, last_hash
puts first_hash.class, last_hash.class

#accessing elements of the hash

puts first_hash["one"]
puts last_hash[:two]

Comment
var = "Hello"*500
puts var