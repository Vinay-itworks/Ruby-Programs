# Modifying a Hash key while it is in use damages the hash’s index.
# This Hash has keys that are Arrays:

a0 = [ :foo, :bar ]
a1 = [ :baz, :bat ]
h = {a0 => 0, a1 => 1}
puts h.include?(a0) # => true
puts h[a0] # => 0
puts a0.hash # => 110002110

# Modifying array element a0[0] changes its hash value:

a0[0] = :bam
puts a0.hash # => 1069447059

# And damages the Hash index:

puts h.include?(a0) # => false
puts h[a0] # => nil

# You can repair the hash index using method rehash:

puts h.rehash # => {[:bam, :bar]=>0, [:baz, :bat]=>1}
puts h.include?(a0) # => true
puts h[a0] # => 0

# A String key is always safe. That’s because an unfrozen String passed as a key will be replaced by a duplicated and frozen String:

s = 'foo'
puts s.frozen? # => false
h = {s => 0}
first_key = h.keys.first
puts first_key.frozen? # => true

puts Array.new(4) {|i| Array[i]}

puts Array[1]

ary = [1, 2, 3, 4, 5, 6]
ary.pop(2)
puts ary.drop(2)
puts ary.take(4)

puts ary.at(2)
puts ary.fetch(10, "Out of index")

puts :bee.hash

BEE = 1
puts BEE.hash

ary = Array.new(5)
ary.push(1, 2, 3)
puts ary.length
puts ary.count
puts ary.empty?
puts ary.include?(2)

ary = [1, 2, 2, 3, 2]
ary.delete(2)
puts ary