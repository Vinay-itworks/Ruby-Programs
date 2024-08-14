<<-TASK

@1
Suppose there is json which has array of students.
each student has attributes like 
name
age
college
array of hobbies (like each student can have multiple hobbies)

Process the JSON and give a result that groups the students college wise and 
within the college, they should be grouped by each hobby

@2
If you were given a series of words, process those and return only those words 
that are palindromes without using the reverse function

TASK

#TASK One

# Data = [
#   {
#     name: "Nitin",
#     age: 12,
#     college: "ABC",
#     hobbies: ["Dancing", "Coding", "Racing"]},
#   {
#     name: "Amar",
#     age: 13,
#     college: "XYZ",
#     hobbies: ["Coding"]},
#   {
#     name: "Ajay",
#     age: 13,
#     college: "ABC",
#     hobbies: ["Coding", "Swimming"]},
#   {
#     name: "Shyam",
#     age: 12,
#     college: "ABC",
#     hobbies: ["Traveling"]
#   }
# ]

# # Data[1][:fan] = ("Hello")
# # puts Data

# result = {}

# Colleges = Data.map {|i| i[:college]}.uniq
# Hobby = []
# Data.map {|i| i[:hobbies].each {|i| Hobby.push(i)}}
# Hobbies = Hobby.uniq
# puts Hobbies.to_s
# puts Colleges.to_s

# sub = {}

# for hobby in Hobbies
#   sub[hobby] = []
# end

# for college in Colleges
#   result[college] = sub
# end

# puts result.to_s

# result["ABC"]["Dancing"].push("HEllo")

# puts result.to_s

# for college in Colleges do
#   for hobby in Hobbies do 
#     for student in Data.each do
#       #student.to_s
#       puts student[:college]
#       puts college
#       puts "Hello"
#       if student[:hobbies].include?(hobby) and student[:college] === college
#         result[college][hobby].push(student)
#         puts "added"
#       end
#     end
#     puts "ends"
#   end
# end

# Colleges.each { |college|
#   Hobbies.each { |hobby|
#     Data.each { |student|
#       #student.to_s
#       if student[:hobbies].include?(hobby) and student[:college] == college
#         result[college][hobby].push(student)
#       end
#     }
#   }
# }



# result.each{ |key, value|
#   puts key
#   result[key].each{|key, value|
#     puts key
#     puts value.uniq.to_s
#   }
# }





#TASK One

# Data = [
#   {
#     name: "Nitin",
#     age: 12,
#     college: "ABC",
#     hobbies: ["Dancing", "Coding", "Racing"]},
#   {
#     name: "Amar",
#     age: 13,
#     college: "XYZ",
#     hobbies: ["Coding"]},
#   {
#     name: "Ajay",
#     age: 13,
#     college: "ABC",
#     hobbies: ["Coding", "Swimming"]},
#   {
#     name: "Shyam",
#     age: 12,
#     college: "ABC",
#     hobbies: ["Traveling"]
#   }
# ]

# # Data[1][:fan] = ("Hello")
# # puts Data

# result = {}

# Colleges = Data.map {|i| i[:college]}.uniq
# Hobby = []
# Data.map {|i| i[:hobbies].each {|i| Hobby.push(i)}}
# Hobbies = Hobby.uniq
# puts Hobbies.to_s
# puts Colleges.to_s

# sub = {}



# for college in Colleges
#   result[college] = Hash.new
# end

# for college in Colleges
# for hobby in Hobbies
#   result[college][hobby] = Array.new
# end
# end

# puts result.to_s


# for college in Colleges do
#   for hobby in Hobbies do 
#     for student in Data.each do
#       #student.to_s
      
#       if student[:hobbies].include?(hobby) and student[:college] === college
#         result[college][hobby].push(student)
#       end
#     end
#   end
# end

# result.each{ |key, value|
#   puts key
#   result[key].each{|key, value|
#     puts key
#     puts value.uniq.to_s
#   }
# }