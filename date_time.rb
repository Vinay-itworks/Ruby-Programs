time = Time.new

puts time.inspect #returns the time into string form

# Components of a Time
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name


# Time.utc, Time.gm and Time.local Functions
# July 8, 2008
puts Time.local(2008, 7, 8)  #-> 2008-07-08 00:00:00 +0530
# July 8, 2008, 09:10am, local time
puts Time.local(2008, 7, 8, 9, 10)   #-> 2008-07-08 09:10:00 +0530
# July 8, 2008, 09:10 UTC
puts Time.utc(2008, 7, 8, 9, 10)  #-> 2008-07-08 09:10:00 UTC
# July 8, 2008, 09:10:11 GMT (same as UTC)
puts Time.gm(2008, 7, 8, 9, 10, 11)  #-> 2008-07-08 09:10:11 UTC



# Returns number of seconds since (epoch)?
puts time = Time.now.to_i  

# Convert number of seconds into Time object.
puts Time.at(time)

# Returns second since epoch which includes microseconds
puts time = Time.now.to_f


# Timezones and Daylight Savings Time

# You can use a Time object to get all the information related to Timezones and daylight savings as follows −

puts time = Time.new
# Here is the interpretation
puts time.zone       # => "UTC": return the timezone
puts time.utc_offset # => 0: UTC is 0 seconds offset from UTC
puts time.zone       # => "PST" (or whatever your timezone is)
puts time.isdst      # => false: If UTC does not have DST.Daylight Saving Time
puts time.utc?       # => true: if t is in UTC time zone
puts time.localtime  # Convert to local timezone.
puts time.gmtime     # Convert back to UTC.
puts time.getlocal   # Return a new Time object in local zone
puts time.getutc     # Return a new Time object in UTC


# Formatting Times and Dates

# There are various ways to format date and time. Here is one example showing a few −

puts time = Time.new
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%A %H:%M:%S %d-%m-%Y")

# Time Arithmetic

# You can perform simple arithmetic with time as follows −

now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10       # 10 seconds from now Time + number => Time
puts future

diff = future - past    # => 10  Time - Time => number of seconds
puts diff