# TASK One

data = [
  {
    name: "Nitin",
    age: 12,
    college: "ABC",
    hobbies: ["Dancing", "Coding", "Racing"]},
  {
    name: "Amar",
    age: 13,
    college: "XYZ",
    hobbies: ["Coding"]},
  {
    name: "Ajay",
    age: 13,
    college: "ABC",
    hobbies: ["Coding", "Swimming"]},
  {
    name: "Shyam",
    age: 12,
    college: "ABC",
    hobbies: ["Traveling"]
  }
]

# data[1][:fan] = ("Hello")
puts "data"
puts data

result = {}

list_colleges = data.map {|i| i[:college]}.uniq
hobby = []
data.map {|i| i[:hobbies].each {|i| hobby.push(i)}}
list_hobbies = hobby.uniq
# puts hobbies.to_s
# puts colleges.to_s


for college in list_colleges do
  result[college] = Hash.new # for creating the empty array
  for hobby in list_hobbies do 
    result[college][hobby] = Array.new # for creating the empty array
    for student in data.each do
      #student.to_s
      if student[:hobbies].include?(hobby) and student[:college] === college
        result[college][hobby].push(student)
      end
    end
  end
end
puts "Solution"
puts result

# # Puts the result separatly
# result.each{ |key, value|
#   puts key
#   result[key].each{|key, value|
#     puts key
#     puts value.uniq.to_s
#   }
# }


