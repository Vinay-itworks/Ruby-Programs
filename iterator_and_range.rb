# Range

range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Assume a range
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end

# Range with case

score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result

# Range with if statement


if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end

# Iterators

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b

#

a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b


# Difference between each, map, collect

a = [1,2,3,4,5]
b = a.each{|x| 10*x}
puts b.to_s
puts a.to_s

a = [1,2,3,4,5]
b = a.map{|x| 10*x}
puts b.to_s
puts a.to_s

a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b.to_s
puts a.to_s

a = [1,2,3,4,5]
b = a.collect!{|x| 10*x}
puts b.to_s
puts a.to_s

# map and collect are same
