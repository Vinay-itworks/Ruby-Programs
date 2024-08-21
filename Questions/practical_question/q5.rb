# System will show the following on screen, when you start the program.
# ======================
# Welcome to My Shop
# ======================
# Today's Details
# -----------------
# Total Order #: **
# Total Amount: **
# Minimum Order: **
# Maximum Order: **
# Average Order:
# ======================
# 1 Create New Order
# 2 Print Day Details
# 3 Print Month Details
# How may I help you?(1, 2, 3 or quit)
# For option 1 Create New Order. Input Ex: 21-07-2018 500
# For option 2 Print Day Details. Input it Ex: 22-06-2018
# For option 3 Print Month Details. Input it Ex: 6 2018
# Program will print with appropriate details.
# Notes:
# • Program will quit only when user type option q or quit (Without case sensitive).
# • Load dummy data with program start.
# • Program will keep store order information while the program is running.
require "json"
require "date"

# puts Date.parse("21-08-2024").mon

class Shop
  DB = "database.json"
  
  def self.get_DB
    file = open(DB).read
    data = JSON.parse(file)
    return data
  end

  def self.update_DB(data)
    puts "Called"
    File.open(DB, 'w') do |file|
      file.write(JSON.pretty_generate(data))
    end
    return "Successful"
  end

  def self.create_order
    print "Enter record (Ex:21-08-2024 500) : "
    input = gets.chomp.split(" ")
    begin
      date = Date.parse(input[0])
    rescue Date::Error => exception
      puts "Retry"
      self.create_order
    end
    amount = input[1].to_i
    data = self.get_DB
    data["record"] << [date, amount]
    self.update_DB(data)
  end

  def self.get_day_details
    print "Enter record of (Ex:21-08-2024) : "
    input = gets.chomp.strip
    begin
      date = Date.parse(input)
    rescue Date::Error => exception
      puts "Retry"
      self.get_day_details
    end
    result = []
    data = self.get_DB
    data["record"].each_with_index { |value, i|
      if value[0] == date.to_s
        result << value[1]
      end
    }
    return result
  end

  def self.get_month_details
    print "Enter record of (Ex: 8) : "
    input = gets.chomp.strip.to_i
    if Array(1..12).include? input
      date = input
    else
      puts "Retry"
      self.get_month_details
    end
  
    result = []
    data = self.get_DB
    for i in 0..data["record"].length-1
      if Date.parse(data["record"][i][0]).mon.to_i == date
        # puts "Matched"
        result << [data["record"][i][0], data["record"][i][1]]
        # puts result.inspect
      end
    end
    return result
  end

  def self.total_order
    data = self.get_DB
    return data["record"].length
  end

  def self.total_amount
    data = self.get_DB
    result = 0
    for i in 0..data["record"].length-1
      result += data["record"][i][1]
    end
    return result
  end

  def self.min_order
    data = self.get_DB
    result = data["record"][0][1]
    for i in 1..data["record"].length-1
      if result > data["record"][i][1]
        result = data["record"][i][1]
      end
    end
    return result
  end

  def self.max_order
    data = self.get_DB
    result = data["record"][0][1]
    for i in 1..data["record"].length-1
      if result < data["record"][i][1]
        result = data["record"][i][1]
      end
    end
    return result
  end

  def self.avg_order
    total = self.total_amount
    num = self.total_order
    return total/num
  end

end

# Shop.create_order
# puts Shop.get_day_details
# puts Shop.get_month_details.inspect
# puts Shop.get_DB



puts "======================\nWelcome to My Shop\n======================\nToday's Details\n-----------------"
puts "Total Order : #{Shop.total_order}"
puts "Total Amount: #{Shop.total_amount}"
puts "Minimum Order: #{Shop.min_order}"
puts "Maximum Order: #{Shop.max_order}"
puts "Average Order: #{Shop.avg_order}"
puts "======================"
switch = ""
until switch == "quit" || switch == "q"
  puts "1 Create New Order \n2 Print Day Details\n3 Print Month Details\nHow may I help you?(1, 2, 3 or quit)"
  input = gets.chomp
  num = input.to_i
  if num == 1
    puts Shop.create_order
  elsif num == 2
    puts Shop.get_day_details
  elsif num == 3
    puts Shop.get_month_details
  elsif input == "quit" || input == "q"
    switch = "quit"
  else
    puts "Enter proper value."
    redo
  end
end
