# Program 4:
# Website has some Validation Constraints of dimension to accept Images from users. Minimum
# dimension of the image is L x L.
# User has N images of different sizes. Dimension of image denoted by W x H (Width x Height)
# Take Following Input from users
# Dimensional constraints L x L. Where 0 < L < 10000
# No of Images. Where 0 < N < 100
# Dimension of images W x H. Where 0 < W < 10000 & 0 < H < 10000
# When any image WxH provided the following output occur accordingly Constraint L:
# If any of the width or height is less than L, then Print “Image not Valid”.
# If width and height, both are large enough and W == H then Print “Perfect”
# If width and height, both are large enough and W != H then Print “Crop and Accept”

# Sample Input
# ------------
# 200
# 3
# 100 200
# 500 500
# 320 450

# Sample Output
# -------------
# Image not Valid
# Perfect
# Crop and Accept

class Dimension
    
  def check_dimensions(l, dimensions)
    for i in dimensions
      if i[0] < l || i[1] < l
        puts "Image not Valid"
      elsif i[0] == i[1]
        puts "Perfect"
      elsif i[0] != i[1]
        puts "Crop and Accept"
      end
    end
  end


  def get_dimensions(n)
    result = []
    until n == 0
      print "Enter dimension as W H : "
      dimension = gets.chomp.split(" ")
      dimension.map! {|i| i.to_i}
      result << dimension
      n -= 1
    end
    return result
  end

end

switch = ""

obj = Dimension.new

until switch == "quit" || switch == "q"
  print "Enter Dimensional constraints L : "
  L = gets.chomp.to_i

  print "Enter No of images : "
  N = gets.chomp.to_i

  dimensions = obj.get_dimensions(N)

  obj.check_dimensions(L, dimensions)

  print "Do you want to continue Y/n : "
  input = gets.chomp.downcase
  unless input == "yes" || input == "Y" || input == "y"
    switch = "quit"
  end
end
