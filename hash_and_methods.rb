# Hash Data Syntax
h = {:foo => 0, :bar => 1, :baz => 2}
puts h # => {:foo=>0, :bar=>1, :baz=>2}

h = {foo: 0, bar: 1, baz: 2}
puts h # => {:foo=>0, :bar=>1, :baz=>2}

# Raises SyntaxError (syntax error, unexpected ':', expecting =>):
h = {0: 'zero'}

# Common Uses

# You can use a Hash to give names to objects:

person = {name: 'Matz', language: 'Ruby'}
person # => {:name=>"Matz", :language=>"Ruby"}

# You can use a Hash to give names to method arguments:

def some_method(hash)
  puts hash
end
some_method({foo: 0, bar: 1, baz: 2}) # => {:foo=>0, :bar=>1, :baz=>2}

some_method(foo: 0, bar: 1, baz: 2) # => {:foo=>0, :bar=>1, :baz=>2} Note: when the last argument in a method call is a Hash, the curly braces may be omitted:

# You can use a Hash to initialize an object:

class Dev
  attr_accessor :name, :language
  def initialize(hash)
    self.name = hash[:name]
    self.language = hash[:language]
  end
end
matz = Dev.new(name: 'Matz', language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">


# Creating a Hash
# 1
h = Hash.new
puts h # => {}
puts h.class # => Hash
puts h.default

# 2
h = Hash[]
puts h # => {}

# 3
h = Hash[foo: 0, bar: 1, baz: 2]
putsh # => {:foo=>0, :bar=>1, :baz=>2}

# 4
h = {foo: 0, bar: 1, baz: 2}
putsh # => {:foo=>0, :bar=>1, :baz=>2}

# Hash Value Basics
# Accessing
h = {foo: 0, bar: 1, baz: 2}
puts h[:foo] # => 0

# Updating
h[:bat] = 3 # => 3
puts h # => {:foo=>0, :bar=>1, :baz=>2, :bat=>3}
h[:foo] = 4 # => 4
puts h # => {:foo=>4, :bar=>1, :baz=>2, :bat=>3}

# Deleting
puts h.delete(:baz) # => 1
puts h # => {:foo=>0, :baz=>2}

person = {name: 'Matz', language: 'Ruby'}
puts person = {index: 101}.merge(person)
puts person
data = {name: "Vinay"}
puts person.update(data)
puts person