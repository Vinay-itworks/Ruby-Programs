# File I/O (
#   1. File handling , 
#   2. create,move using fileIO , 
#   3. each_byte , 
#   4. IO.readlines & IO.foreach (difference , use) . 
#   Read and Write Mode ( use , difference )




# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.



aFile = File.open("file.txt", "r")
if aFile
   content = aFile.sysread(50)
   puts content
else
   puts "Unable to open file!"
end


aFile = File.new("file.txt", "a+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

# To create new file.

out_file = File.new("out.txt", "w")
#...
out_file.puts("write your stuff here")
#...
out_file.close

# each_byte

aFile = File.new("file.txt", "r+")
if aFile
  aFile.syswrite("ABCDEF")
  aFile.each_byte {|ch| putc ch; putc ?. }
else
  puts "Unable to open file!"
end

# readlines 
arr = IO.readlines("file.txt")
puts arr[0]
puts arr[1]

# foreach method
IO.foreach("file.txt"){|block| puts block}

# Rename method

File.rename( "out.txt", "test.txt" )
File.delete("test.txt")

# chmod
# excute x => 1
# write  w => 2
# read   r => 4
# 421 => rwx => 4+2+1 => 7
# rwx
# 000 => --- => 0
# 001 => --x => 1
# 010 => -w- => 2
# 011 => -wx => 3
# 100 => r-- => 4
# 101 => r-x => 5
# 110 => rw- => 6
# 111 => rwx => 7

file = File.new( "test.txt", "w" )
file.chmod( 0755 )

# Inquiries
if File::exists?( "file.rb" ) 
  File.open("file.rb") 
else
  puts "File does not exist."
end

puts File.file?( "text.txt" )

# a directory
puts File::directory?( "/usr/local/bin" ) # => true

# a file
puts File::directory?( "file.txt" ) # => false


puts File.readable?( "file.txt" )   # => true
puts File.writable?( "file.txt" )   # => true
puts File.executable?( "file.txt" ) # => false

# Check if the file has zero size or not
puts File.zero?( "test.txt" )

# Returns the size of the file in bytes.
puts File.size?( "file.txt" )

# The following command can be used to find when a file was created, modified, or last accessed −

puts File::ctime("array_and_methods.rb")
puts File::mtime("test.txt")
puts File::atime("test.txt")

# To change directory in ruby code
Dir.chdir("/usr/bin")

# To show current directory in ruby
puts Dir.pwd

# To get the list of file with the certain dir
puts Dir.entries(Dir.pwd)

# Dir.entries returns an array with all the entries within the specified directory. Dir.foreach provides the same feature
Dir.foreach(Dir.pwd) do |entry|
  puts entry
end

# or
puts Dir["*"]

# Make new directory
Dir.mkdir("mynewdir")

Dir.mkdir( "mynewdir", 755 ) # set permission owner group world

Dir.delete("mynewdir")

# ?

require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)

require 'tempfile'
  f = Tempfile.new('tingtong')
  f.puts "Hello"
  puts f.path
  f.close



  # Also && has higher precedence than ||, where as and and or have the same one. 