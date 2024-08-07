array_first = [1, 2, 3, 4, 5]

# a = [ "a", "b", "c" ]
# n = [ 65, 66, 67 ]
# puts a.pack("A3A3A3")   #=> "a  b  c  "
# puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
# puts n.pack("ccc")      #=> "ABC"




# nums = Array.new(10) { |e| e = e * 2 }
# puts nums

# puts ary = Array.new    #=> []
# puts Array.new(3)       #=> [nil, nil, nil]
# puts Array.new(3, true) #=> [true, true, true]

# puts Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
# puts Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]

# puts empty_table = Array.new(3) {Array.new(3)} #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
# puts three_d_arr = Array.new(3) {Array.new(3, 0)} #=> [[0, 0, 0], [0, 0, 0], [0, 0, 0]]

# puts Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]] # Converting Hash into array

# Accessing Elements

arr = [1, 2, 3, 4, 5, 6]
# puts arr[2]    #=> 3 #Puts 2nd element of arr
# puts arr[100]  #=> nil #Puts nil value showing there is no element at 100nd position
# puts arr[-3]   #=> 4 #Puts the last 3rd element of arr
# puts arr[2, 3] #=> [3, 4, 5] #Puts 2nd and the next 3 elements
# puts arr[1..4] #=> [2, 3, 4, 5] #Puts 1st to 4rd element of arr
# puts arr[2..-3] #=> [2, 3, 4] #Puts elements from 2nd to last 3rd elements

# puts arr.at(0) #=> 1

# arr = ['a', 'b', 'c', 'd', 'e', 'f']
# arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
# puts arr.fetch(100, "oops") #=> "oops"

# puts arr.first #=> 1
# puts arr.last  #=> 6

# puts arr.take(3) #=> [1, 2, 3]
# puts arr.drop(3) #=> [4, 5, 6]

# Obtaining Information about an Array

# puts arr.length #=> 6
# puts arr.count #=> 6
# puts arr.empty?
# puts arr.include?(0)
# puts arr.include?(5)

# Adding Items to Arrays

arr = [1, 2, 3, 4]
# puts arr.push(5) #=> [1, 2, 3, 4, 5]
# puts arr << 6    #=> [1, 2, 3, 4, 5, 6]

# puts arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6] #unshift will add a new item to the beginning of an array.

# puts arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6] #With insert you can add a new element to an array at any position.
# puts arr.insert(3, 'orange', 'pear', 'grapefruit') #=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

# Removing Items from an Array
arr =  [1, 2, 3, 4, 5, 6]
# puts arr.pop #=> 6
# puts arr #=> [1, 2, 3, 4, 5]

# puts arr.shift #=> 1
# puts arr #=> [2, 3, 4, 5]

# puts arr.delete_at(2) #=> 4
# puts arr #=> [2, 3, 5]

# arr = [1, 2, 2, 3]
# puts arr.delete(2) #=> 2
# puts arr #=> [1,3]

# arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
# puts arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
# puts arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
# puts arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
# puts arr          #=> ['foo', 0, 'bar', 7, 'baz']

# arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
# puts arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123] # Return all unique value in array

# Iterating over Arrays

arr = [1, 2, 3, 4, 5]
# arr.each {|a| print a -= 10, " "} # prints: -9 -8 -7 -6 -5

# arr = [1, 2, 3, 4, 5]
# arr.reverse_each {|a| print a, " "}

# words = %w[first second third fourth fifth sixth] # %w it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# str = ""
# words.reverse_each {|word| str += "#{word} "}
# puts str #=> "sixth fifth fourth third second first "


# puts arr.map {|a| 2*a}     #=> [2, 4, 6, 8, 10]
# puts arr                   #=> [1, 2, 3, 4, 5]
# puts arr.map! {|a| a*a}   #=> [1, 4, 9, 16, 25]
# puts arr                   #=> [1, 4, 9, 16, 25]


# Non-destructive Selection

# arr = [1, 2, 3, 4, 5, 6]
# puts arr.select {|a| a > 3}       #=> [4, 5, 6]
# puts arr.reject {|a| a < 3}       #=> [3, 4, 5, 6]
# puts arr.drop_while {|a| a < 4}   #=> [4, 5, 6]
# puts arr                          #=> [1, 2, 3, 4, 5, 6]

# Destructive Selection

# puts arr.delete_if {|a| a < 4}   #=> [4, 5, 6]
# puts arr                         #=> [4, 5, 6]

# arr = [1, 2, 3, 4, 5, 6]
# puts arr.keep_if {|a| a < 4}   #=> [1, 2, 3]
# puts arr                       #=> [1, 2, 3]
