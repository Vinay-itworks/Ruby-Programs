<<-Question
Array Examples:

Create an Array,
For Ex:
	[11, 56, 8, 98, "abc", -1, 0, "t", 33, 7, 9, 5, 11, 789, 45635, -78, "z", nil, ""]


1. Remove NIL & Empty Values from Array
2. Pick Odd Numbers from Array
3. Perform Sum of Even Numbers from Array
4. Pick String elements of Array
5. Pick Negative Numbers from Array
6. Pick Prime Numbers from Array
7. Keep only Integer Elements & Sort in decending order
8. Split Array and Pick only first 7 Elements
9. Split Array and Pick only last 5 Elements
10. Create an array of Array (nested Array), Output will be Singletone array with Unique elements


Hash Examples:
	Create an Array of Hash, With Minimum 20 Elements
	For Ex,
	[
		{
			first_name: "Joe",
			last_name: "Doe",
			age: 32,
			email: "joe_doe@yopmail.com",
			city: "Pune",
			state: "Maharashtra",
			country: "India",
			phone: "",
			hobbies: ["Singing", "Travelling"],
			university: "Pune University"
		},
		{
			first_name: "ABC",
			last_name: "Xyz",
			age: 21,
			email: "joe_doe@gmail.com",
			city: "Delhi",
			state: "Delhi",
			country: "India",
			phone: "9858743265",
			hobbies: ["Cooking", "Swimming"],
			university: "Delhi University"
		}
	]


1. List all the Students from a particular City (like, Pune)
2. List all the Students where Age > 25
3. List all the students who do not have phone number
4. List all the Student whose email ends with gmail.com
5. List all the Students who have hobby a hobby (like Travelling)
Question

ary = [11, 56, 8, 98, "abc", -1, 0, "t", 33, 7, 9, 5, 11, 789, 45635, -78, "z", nil, ""]
# 1. Remove NIL & Empty Values from Array
ary.compact!
ary.delete("")
puts ary.to_s

# 2. Pick Odd Numbers from Array
puts ary.select{|i| i%2==1}.to_s

# 3. Perform Sum of Even Numbers from Array
evens = ary.select{|i| i%2==0}
sum = 0
puts evens.to_s
evens.each {|i| sum+=i}
puts sum

# 5. Pick Negative Numbers from Array
num = ary.select {|i| i.is_a? Integer}
puts num.to_s

puts num.select {|i| i<0}.to_s

# 6. Pick Prime Numbers from Array

num = ary.select {|i| i.is_a? Integer}
prime = []
is_prime = true

for n in num do
  
  for i in 2..(n/2)+1 do    
    if n%i == 0 
      is_prime = false
      break
    end
  end
  if n < 0
    is_prime = false
  end
  # puts "Prime #{is_prime} for #{n}"
  prime.push(n) if is_prime 
  is_prime = true #reset
end
puts prime.to_s

# n = 5
# is_prime = true
# for i in 2..(n/2)+1 do
#   if n%i == 0 
#     is_prime = false
#     break
#   end
# end
# puts "Prime #{is_prime} for #{n}"

# 7. Keep only Integer Elements & Sort in decending order

num = ary.select {|i| i.is_a? Integer}

puts num.sort().to_s

puts num.sort_by{|i| -i}.to_s

# 8. Split Array and Pick only first 7 Elements

puts ary.to_s

puts ary[0, 7].to_s

# 9. Split Array and Pick only last 5 Elements

puts ary[0, 5].to_s

# 10. Create an array of Array (nested Array), Output will be Singletone array with Unique elements

nested_ary = [[3, 4, 5, 4], [4, 4, 6], [7, 6, 5]]
puts nested_ary.inspect
# Method 1

ary = []
puts nested_ary[0].length
for i in 0..nested_ary.length-1
  for j in 0..nested_ary[i].length-1
    ary << nested_ary[i][j]
  end
end
puts ary.uniq.inspect

# Method 2

puts nested_ary.flatten.uniq.inspect


# ?
data = [
  {
    first_name: "Joe",
    last_name: "Doe",
    age: 32,
    email: "joe_doe@yopmail.com",
    city: "Pune",
    state: "Maharashtra",
    country: "India",
    phone: "",
    hobbies: ["Singing", "Travelling"],
    university: "Pune University"
  },
  {
    first_name: "ABC",
    last_name: "Xyz",
    age: 21,
    email: "joe_doe@gmail.com",
    city: "Delhi",
    state: "Delhi",
    country: "India",
    phone: "9858743265",
    hobbies: ["Cooking", "Swimming"],
    university: "Delhi University"
  }
]

# 1. List all the Students from a particular City (like, Pune)

list = []
data.each{|student| list.push(student) if student[:city]=="Pune"}

puts list

# 2. List all the Students where Age > 25
list = []

data.each{|student| list.push(student) if student[:age] >= 25}

# 3. List all the students who do not have phone number

list = []

data.each{|student| list.push(student) if student[:phone] == ""}

# 4. List all the Student whose email ends with gmail.com regular expression

list = []

data.each{|student| list.push(student) if student[:email].match(/gmail.com/)}

puts list

# 5. List all the Students who have hobby a hobby (like Travelling)

list = []

data.each{|student| list.push(student) if student[:hobbies].include?("Travelling")}