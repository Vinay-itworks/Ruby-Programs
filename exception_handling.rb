# Exception Handling 
# -Types(
#   1. Not Found exception types , 
#   2.Raise , 
#   3.Retry , 
#   4.Rescue , 
#   5.Exception with and without message , 
#   6.Runtime error ,
#   7.Syntax error , 
#   8.Time-out error , 
#   9. null exceptions ,
#   10. begin&rescue , 
#   11. Ternary if condition error).                                                        


#Syntax
=begin

begin  
# -  
rescue OneTypeOfException  
# -  
rescue AnotherTypeOfException  
# -  
else  
# Other exceptions
ensure
# Always will be executed
end

=end



# begin
#   file_name = "nofile.txt"
#   file = open(file_name)
#   if file
#      puts "File opened successfully"
#   end
# rescue 
#   file = STDIN
# end
# print file, "==", STDIN, "\n"

# #
# file_name = "nofile.txt"
# begin
#   file = open(file_name)
#   puts "File opened successfully"
# rescue Exception => e
#   puts e.message
#   file_name = "file.txt"
#   retry
# end
# print file, "==", STDIN, "\n"

# Exception without message

a = 5
b = 0

begin
  result = a/b
  puts result
rescue Exception => exception
  puts exception.message
  puts exception.backtrace.inspect
  b = a
  retry
end


# Raise

name = gets.chomp

begin
  raise Exception, "This name is forbidden to use." if name == "Vinay"
  puts "Hello #{name}"
rescue Exception => e
  puts e.message
  name = gets.chomp
  retry
end

# Ensure and else
print "Enter speed: "
speed = gets.chomp.to_i
puts speed, speed.class 
begin
  if speed > 40
    raise Exception, "Too fast, go slow."
  end
  if speed == 0
    raise Exception, "Enter proper value."
  end
  puts "Nice Driver"
rescue Exception => exception
  puts exception.message
else
  puts "Passed the test"
ensure
  puts "Maintain a safe speed while driving"
end

# Runtime error

begin
  1 = 2
rescue SyntaxError => exception
  puts exception.message
end

# Nill error

begin
  a = nil
  raise NilPointerException, "Variable is pointing to null location."
rescue NilPointerException => exception
  puts exception.message
end

