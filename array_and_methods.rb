array_first = [1, 2, 3, 4, 5]






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

# puts arr.at(10) #=> 1

# arr = ['a', 'b', 'c', 'd', 'e', 'f']
# arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
# puts arr.fetch(100, "oops") #=> "oops"

# puts arr.first #=> 1
# puts arr.last  #=> 6
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# puts arr.take(4) #=> [1, 2, 3]
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

puts arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6] #unshift will add a new item to the beginning of an array.

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

arr = [2, 1, 2, 2, 3, 2]
puts arr.delete(2) #=> 2
puts arr #=> [1,3]

# arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
# puts arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
# puts arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
# puts arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
# puts arr          #=> ['foo', 0, 'bar', 7, 'baz']

# arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
# puts arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123] # Return all unique value in array

# Iterating over Arrays

arr = [1, 2, 3, 4, 5]
arr.each_with_index {|a, b| print a , b, " "} # prints: -9 -8 -7 -6 -5

# arr = [1, 2, 3, 4, 5]
# arr.reverse_each {|a| puts a, " "}

# words = %w[first second third fourth fifth sixth] # %w it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# str = ""
# words.reverse_each {|word| str += "#{word} "}
# puts str #=> "sixth fifth fourth third second first "

arr = [1, 2, 3, 4, 5]
puts arr.values_at(2, 3, 5)
# arr.reverse_each {|a| print a, "0"}  #=> 5040302010

# puts arr.map {|a| 2*a}     #=> [2, 4, 6, 8, 10]
# puts arr                   #=> [1, 2, 3, 4, 5]
# puts arr.map! {|a| a*a}   #=> [1, 4, 9, 16, 25]
# puts arr                   #=> [1, 4, 9, 16, 25]

arr = [1, 2, 3, 4, 5, 6]
# Non-destructive Selection

# puts arr.reject! {|a| a > 2}

# puts arr
# puts arr.select {|a| a > 3}       #=> [4, 5, 6]
# puts arr.reject {|a| a < 3}       #=> [3, 4, 5, 6]
# puts arr.drop_while {|a| a < 4}   #=> [4, 5, 6]
# puts arr                          #=> [1, 2, 3, 4, 5, 6]

# Destructive Selection select! and reject!
# arr = [1, 2, 3, 4, 5, 6]
# puts arr.delete_if {|a| a < 4}   #=> [4, 5, 6]
# puts arr                         #=> [4, 5, 6]

# arr = [1, 2, 3, 4, 5, 6]
# puts arr.keep_if {|a| a < 4}   #=> [1, 2, 3]
# puts arr                       #=> [1, 2, 3]

# a = [ "a", "b", "c" ]
# n = [ 65, 66, 67 ]
# puts a.pack("A3A3A3")   #=> "a  b  c  "
# puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
# puts n.pack("ccc")      #=> "ABC"


arr = [1, 2, 3 , 4, nil, ' ']
puts arr.drop(3)

puts arr.compact.to_s => [1, 2, 3, 4, ' ']


# Array methods
arr.at => Return element at the given index if no element returns nil
arr.fetch => Return element at the given index if no element through error message. arr.fetch(index, "default value if no element")
arr.first => Returns first element of the array or hash
arr.last => Returns last element of the array or hash
arr.take => Returns values from the array till the given index
arr.drop => Returns values from the arrray after the given index 
arr.push => Insert the given value at the end of array
arr.unshift => Inserts the given value at the start of array
arr.insert(1, 3) => Inserts 3 at the index 1
arr.pop => Removes last value of the array and returns it
arr.shift => Removes first value of the array and returns it
arr.delete_at => Removes the value at the given index and returns it
arr.delete => Removes all values similar to the given input value and returns the value
arr.compact => Removes all nil values from the array
arr.uniq => Returns array of all the unique values in the array
arr.each {} => Iterates the array one by one
arr.reverse_each {} => Iterates the array in reverse order
arr.map {} => Iterates the array on the making the changes to the value of the array
arr.each_with_index {} => Iterates the array with the index values
arr.select {} => Returns the values of the array which are true to the given block
arr.reject {} => Returns the values of the array which are false to the given block
arr.drop_while {} => Drops the values untill the block is true
arr.delete_if {} => similar to the reject but the changes are made in place
arr.keep_if {} => similar to the select but the changes are made in place




# Hash methods
hash.clear => clears the hash
hash.delete() => deletes the element of the hash
hash.delete_if{} => deletes the element from the hash if true from the given block
hash.each{} => Iterates the hash one-by-one for each key value pairs
hash.each_key{} => Iterates the hash keys one by one
hash.has_key?() - hash.include? - hash.member? - hash.key? => Checks for the key in the hash
hash.has_value?() => Checks for the given value in the hash
hash.inspect => Return the hash in a hash string format
hash.invert => Replace the key and value with each other
hash.keys => Return the array of all keys
hash.merge(hash2) - hash.merge!(hash2) => Adds the keys values of hash2 into hash and
       if the keys in both are similar then update the value of the key value with the value of hash2
hash.reject {} => Returns the values which are false to the given block
hash.replace(hash2) => hash one becomes hash2
hash.select {} => Returns the values which are true to given block
hash.shift => Removes the first pair for the given hash and returns it
hash.sort => Sort according to the keys
hash.store(key, value) => Stores the values into the hash if there update the value
hash.update => Similar to merge, no need for !
hash.value? => Checks if the value is there in the array and returns true false 
hash.values => Returns the array of all values
hash.values_at => Returns the values of the hash for the given keys.


length,  size, empty?, include?

count, => Counts the elements true for the given condition.
