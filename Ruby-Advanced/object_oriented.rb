# Ruby Class Definition

class Box
  # code
end

# Define Ruby Objects

box1 = Box.new
box2 = Box.new

# The initialize Method
# The initialize method is a standard Ruby class method and works almost same way as 
# constructor works in other object oriented programming languages. The initialize method is useful when 
# you want to initialize some class variables at the time of object creation. This method may take a list of 
# parameters and like any other ruby method it would be preceded by def keyword as shown below −

class Box
  # initialize method
  def initialize(w,h)
    # assign instance variables
    @width, @height = w, h
  end
end


# The accessor & setter Methods
# To make the variables available from outside the class, 
# they must be defined within accessor methods, these accessor methods are also known as a getter methods.
# Similar to accessor methods, which are used to access the value of the variables, 
# Ruby provides a way to set the values of those variables from outside of the class using setter methods


# define a class
class Box
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # accessor methods also known as getter
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  # setter methods
  def setWidth=(value)
    @width = value
  end
  def setHeight=(value)
    @height = value
  end

  # instance method
  def getArea
    @width * @height
  end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"



# The class Methods and Variables

class Box
  # Initialize our class variables
  @@count = 0
  def initialize(w,h)
     # assign instance avriables
     @width, @height = w, h

     @@count += 1
  end

  def self.printCount()
     puts "Box count is : #@@count"
  end
end

# create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# call class method to print box count
Box.printCount()



# The to_s Method

class Box
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end
  # define to_s method
  def to_s
     "(w:#@width,h:#@height)"  # string formatting of the object.
  end
end

# create an object
box = Box.new(10, 20)

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"





# Access Control

# Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.
#     Public Methods − Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.
#     Private Methods − Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.
#     Protected Methods − A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.

# Following is a simple example to show the syntax of all the three access modifiers −

# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()



# Class Inheritance

# One of the most important concepts in object-oriented programming is that of inheritance. 
# Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application.

# Inheritance also provides an opportunity to reuse the code functionality and fast implementation time but unfortunately 
# Ruby does not support multiple levels of inheritances but Ruby supports mixins. A mixin is like a specialized implementation 
# of multiple inheritance in which only the interface portion is inherited.

# When creating a class, instead of writing completely new data members and member functions, 
# the programmer can designate that the new class should inherit the members of an existing class. 
# This existing class is called the base class or superclass, and the new class is referred to as the derived class or sub-class.

# Ruby also supports the concept of subclassing, i.e., inheritance and following example explains the concept. 
# The syntax for extending a class is simple. Just add a < character and the name of the superclass to your class statement. 
# For example, following define a class BigBox as a subclass of Box 

# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# define a subclass
class BigBox < Box

   # add a new instance method
   def printArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area
box.printArea()



# Methods Overriding

# Though you can add new functionality in a derived class, but sometimes you would like to change the behavior of already 
# defined method in a parent class. You can do so simply by keeping the method name same and overriding the functionality of 
# the method as shown below in the example −

# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# define a subclass
class BigBox < Box

   # change existing getArea method as follows
   def getArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.getArea()


# Operator Overloading

# We'd like the + operator to perform vector addition of two Box objects using +, the * operator to multiply 
# a Box width and height by a scalar, and the unary - operator to do negate the width and height of the Box. 
# Here is a version of the Box class with mathematical operators defined −

class Box
   def initialize(w,h)     # Initialize the width and height
      @width,@height = w, h
   end

   def +(other)       # Define + to do vector addition
      Box.new(@width + other.width, @height + other.height)
   end

   def -@           # Define unary minus to negate width and height
      Box.new(-@width, -@height)
   end

   def *(scalar)           # To perform scalar multiplication
      Box.new(@width*scalar, @height*scalar)
   end
end

