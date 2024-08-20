require_relative 'player'

player1 = Player.new("jonathan",100, 50, 1)
player2 = Player.new("ronin",98, 0, 3)
player3 = Player.new("howkeye",30, 87, 6)

# player.get_health()

puts player1
puts player2
puts player3

puts Player.get_players()

puts arena1 = Arena.new.show_arena
arena2 = Arena.new(600, 700)
puts arena2.show_arena
puts player1.show_arena()

# operator overloading
puts player1 + player2

# let us freez this object
player3.freeze
if( player3.frozen? )
   puts "player3 is frozen"
else
   puts "player3 is normal"
end


# CONSTANT in class
puts Arena::CONSTANT

# Create Object Using Allocate

# There may be a situation when you want to create an object without calling its constructor initialize 
# i.e. using new method, in such case you can call allocate, which will create an uninitialized object for you

arena3 = Arena.allocate

# :in `show_arena': undefined method `*' for nil:NilClass (NoMethodError)
#         from /home/dell/Downloads/Codes/Ruby-Advanced/ruby_pratice/main.rb:40:in `<main>'

# arena3.show_arena 


# Class Information
class Box
  # This is put as soon as the code is run.
  puts "This is class information."
  puts "Code is under work."
end