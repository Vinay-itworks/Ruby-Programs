string = "ruby programming"

# How to Get The String Length

puts string.size
puts string.length
# 4

# Check If A String Is Empty

puts "".size == 0 #-> true
puts "".empty? #-> true
# both work similar

puts string.empty? #-> false

# String Interpolation

name = "User"
puts "Hello #{name}"

puts "Learning #{string}"

# Extract substring

puts string[0, 4] # Starting index and last index
puts string[4, 16] # -> " programming"

puts string[0..4] # Works similar
puts string[4..16]

# String contains another string

puts string.include?("pro")

# to get the index of the substring's start value

puts string.index("pro")

# padding in string

puts string.ljust(20, "*")
puts string.rjust(20, "*")
puts string.center(20, "*")

# Compairing string ignoring case

lang1 = "ruby"
lang2 = "Ruby"
puts lang1.upcase == lang2.upcase
puts lang1.casecmp? lang2 # similar

# Trim the string and remove whitespaces 

word = "  Trim      "
puts word
puts word.strip

# Suffix and Preffix

puts string.start_with?("ruby")

puts string.end_with?("ing")

puts string.delete_suffix("ming")
puts string

# Convert string into array of Characters

puts string.split.inspect

split_string = string.split('') 
split_string_second = string.chars
puts split_string.inspect
puts split_string == split_string_second

puts split_string.join('0')

# Converting string into Integer

puts "47".to_i

puts "R37".to_i

puts "R".to_i # if you try this with a string that contains no numbers then you will get 0

# Check if string is a number

puts "123".match?(/\A-?\d+\Z/) # -> true
puts "123bb".match?(/\A-?\d+\Z/) # -> false

# From the start of the string (\A) check 
# if there is an optional dash (-?, for negative numbers), 
# then make sure there are some numbers in there (\d+) & 
# nothing else until the end of the string (\Z).”

# Append characters in string
sentence = ""

sentence << "Welcome"
sentence << "to ITWorks"
sentence << " Infotech"

puts sentence

# Iterate for each character in the string

puts string.each_char {|c| puts c}.inspect

# Upper and Lower case

puts string.upcase
puts string.downcase

# Multiline string

multi_line_string_one = <<-STRING 
Hello world!
Welcome
STRING

multi_line_string_two = %Q(Hello world!
Heartwarm welcome)
puts multi_line_string_one
puts multi_line_string_two


# Replacing the text inside a String

sentence = "Hello, Shayam."

puts sentence.gsub("Hello", "Hey") # sub only replace the first match.

sentence = "We have 3 cats, 2 different places"
puts sentence.gsub(/\d+/, "7")
puts sentence.sub(/\d+/, "7")

title = "the lord of the rings"
puts title.gsub(/\w+/) { |word| word.capitalize }

# Remove last character of string

puts string.chomp("ing")

# String encoding

puts "Hello".encoding # What type of encoding is done.

puts "Hello".force_encoding("UTF-8")

# Counting characters

puts string.count("r") # returns number of times the character occurs.

# Captilize

puts string.capitalize

# Concatenation
# +, <<, concat

puts "Hello" + "World!"
puts "Hello" << "World!"
puts "Hello".concat "World!"

# Clear the value in string

puts string.clear