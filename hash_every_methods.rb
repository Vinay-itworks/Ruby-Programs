h1 = {foo: 0, bar: 1, baz: 2, bat:3}
# 1	
# hash == other_hash

# Tests whether two hashes are equal, based on whether they have the same number of key-value pairs, and whether the key-value pairs match the corresponding pair in each hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

h2 = {foo: 0, bar: 1, baz:2}
puts h1 == h2 # puts false

h2[:bat] = 3
puts h1 == h2 # puts true

# 2	
# hash.[key]

# Using a key, references a value from hash. If the key is not found, returns a default value.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1[:bar]

# 3	
# hash.[key] = value

# Associates the value given by value with the key given by key.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1[:foo] = 4

# 4	
# hash.clear

# Removes all key-value pairs from hash.

h = {name: "Vinay", age: 23, city: "Pune"}
puts h
h.clear
puts h

# 5	
# hash.default(key = nil)

# Returns the default value for hash, nil if not set by default=. ([] returns a default value if the key does not exist in hash.)

h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1
puts h1[:bro]
h1.default(key = 2)
puts h1[:bro]

# 6	
# hash.default = obj

# Sets a default value for hash.

h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1
puts h1[:bro]
h1.default = 1
puts h1[:bro]


# 7	
# hash.default_proc

# Returns a block if hash was created by a block.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

# puts h1.default_proc

# 8	
# hash.delete(key)

# Deletes a key-value pair from hash by key. If block is used, returns the result of a block if pair is not found. Compare delete_if.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1
h1.delete(:bat)
puts h1



# 9	
# hash.delete_if { |key,value| block }

# Deletes a key-value pair from hash for every pair the block evaluates to true.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1
h1.delete_if {|key, value| key == :bat || value < 1}
puts h1

# 10	
# hash.each { |key,value| block }

# Iterates over hash, calling the block once for each key, passing the key-value as a two-element array.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1
h1.each {|key, value| h1[key] = value**2}
puts h1

# 11	
# hash.each_key { |key| block }

# Iterates over hash, calling the block once for each key, passing key as a parameter.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1
h1.each_key{|a| print a, ' '}


# 12	
# hash.each_key { |key_value_array| block }

# Iterates over hash, calling the block once for each key, passing the key and value as parameters.

# 13	
# hash.each_key { |value| block }

# Iterates over hash, calling the block once for each key, passing value as a parameter.

# 14	
# hash.empty?

# Tests whether hash is empty (contains no key-value pairs), returning true or false.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.empty?

# 15	
# hash.fetch(key [, default] ) [or]

# hash.fetch(key) { | key | block }

# Returns a value from hash for the given key. If the key cant be found, and there are no other arguments, it raises an IndexError exception; if default is given, it is returned; if the optional block is specified, its result is returned.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.fetch(:fo, "oops")
puts h1.fetch(:bar, "oops")


# 16	
# hash.has_key?(key) [or] hash.include?(key) [or]

# hash.key?(key) [or] hash.member?(key)

# Tests whether a given key is present in hash, returning true or false.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.has_key?(:foo)
puts h1.has_key?(:bro)

# 17	
# hash.has_value?(value)

# Tests whether hash contains the given value.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.has_value?(0)
puts h1.has_value?(4)

# 18	
# hash.index(value)

# Returns the key for the given value in hash, nil if no matching value is found.
# h1 = {foo: 0, bar: 1, baz: 2, bat:3}
# puts h1.index(2)

# 19	
# hash.indexes(keys)

# Returns a new array consisting of values for the given key(s). Will insert the default value for keys that are not found. This method is deprecated. Use select.

# 20	
# hash.indices(keys)

# Returns a new array consisting of values for the given key(s). Will insert the default value for keys that are not found. This method is deprecated. Use select.

# puts h1.indices(:foo, :bar)

# 21	
# hash.inspect

# Returns a pretty print string version of hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.inspect
puts h1.inspect.class

# 22	
# hash.invert

# Creates a new hash, inverting keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.invert
puts h1.invert.class

puts h1

# 23	
# hash.keys

# Creates a new array with keys from hash.

h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.keys

# 24	
# hash.length

# Returns the size or length of hash as an integer.

h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.length

# 25	
# hash.merge(other_hash) [or]

# hash.merge(other_hash) { |key, oldval, newval| block }

# Returns a new hash containing the contents of hash and other_hash, overwriting pairs in hash with duplicate keys with those from other_hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

h2 = {bro: 4, baq: 5}
puts h1.merge(h2)
puts h1
puts h2


# 26	
# hash.merge!(other_hash) [or]

# hash.merge!(other_hash) { |key, oldval, newval| block }

# Same as merge, but changes are done in place.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

h2 = {bro: 4, baq: 5}
puts h1.merge!(h2)
puts h1

# 27	
# hash.rehash

# Rebuilds hash based on the current values for each key. If values have changed since they were inserted, this method reindexes hash.

# h1.rehash

# 28	
# hash.reject { |key, value| block }

# Creates a new hash for every pair the block evaluates to true
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.reject {|key, value| value < 2}
puts h1

# 29	
# hash.reject! { |key, value| block }

# Same as reject, but changes are made in place.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.reject! {|key, value| value < 2}
puts h1


# 30	
# hash.replace(other_hash)

# Replaces the contents of hash with the contents of other_hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

h2 = {bro: 4, baq: 5}
puts h1, h2

h1.replace(h2)

puts h1, h2

# 31	
# hash.select { |key, value| block }

# Returns a new array consisting of key-value pairs from hash for which the block returns true.

h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.select {|key, value| value < 2}
puts h1

puts h1.select! {|key, value| value < 2}
puts h1

# 32	
# hash.shift

# Removes a key-value pair from hash, returning it as a two-element array.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.shift
puts h1

# 33	
# hash.size

# Returns the size or length of hash as an integer.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.size

# 34	
# hash.sort

# Converts hash to a two-dimensional array containing arrays of key-value pairs, then sorts it as an array.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.sort

# 35	
# hash.store(key, value)

# Stores a key-value pair in hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.store(:bro, 4)
puts h1

# 36	
# hash.to_a

# Creates a two-dimensional array from hash. Each key/value pair is converted to an array, and all these arrays are stored in a containing array.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.to_a
puts h1

# 37	
# hash.to_hash

# Returns hash (self).

arr = [1, :apple, 2, :mango, 3, :orange]
puts arr.to_h

# 38	
# hash.to_s

# Converts hash to an array, then converts that array to a string.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.to_s

# 39	
# hash.update(other_hash) [or]

# hash.update(other_hash) {|key, oldval, newval| block}

# Returns a new hash containing the contents of hash and other_hash, overwriting pairs in hash with duplicate keys with those from other_hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1
puts h2 = {bro: 4, baq: 5}
h1.update(h2)
puts h1
puts h2

# 40	
# hash.value?(value)

# Tests whether hash contains the given value.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}

puts h1.value?(2)

# 41	
# hash.values

# Returns a new array containing all the values of hash.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.include?(:foo)
puts h1.values


# 42	
# hash.values_at(obj, ...)

# Returns a new array containing the values from hash that are associated with the given key or keys.
h1 = {foo: 0, bar: 1, baz: 2, bat:3}
puts h1.values_at(:foo, :baz)


arr = [1, 2, 3, 4]
puts arr.size

arr = Array(1..9)
puts arr.to_s

arr = Array(1...9)
puts arr.to_s