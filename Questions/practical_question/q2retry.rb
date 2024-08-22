# Program 2:
# Design a Ruby class named WordCounter that reads a text file called input.txt.
# Implement methods to:
# 1. Read the contents of the file.
# 2. Count the total number of words in the file.
# 3. Count the occurrences of each unique word in the file.
# 4. Write the word count data to a new file called word_count.txt.

class WordCounter
  def initialize(file_name)
    @file_name = file_name
  end

  def self.check_file(file_name)
    if File::exists? (file_name)
      return true
    else
      return false
    end
  end


  def readfile
    content = IO.readlines(@file_name)
    if content
      return content
    else
      return "Unable to open file!"
    end
  end

  def words_array
    words = []
    content = IO.readlines(@file_name)
    for i in content
      words << i.split(/[\s|.|,]/)
    end
    words = words.flatten
    words.delete("")
    return words
  end

  def count_words
    count = words_array.count
    return count
  end

  def count_unique_words
    record = {}
    words = words_array
    unique_words = words_array.uniq
    for i in unique_words
      record[i] = words.count(i)
    end
    return record.sort_by {|key, value| value}.reverse.to_h
  end

  def update_word_count
    file = File.new("word_count.txt", "w+")
    word_count = self.count_words
    unique_word_count = self.count_unique_words
    write = "#{word_count}\n#{unique_word_count}"
    file.syswrite(write)
    return write
  end

end

# obj = WordCounter.new("database.json")
# puts obj.words.inspect


switch = ""
until switch == "quit" || switch == "q"
  print "Enter file path or q : "
  filename = gets.chomp
  if filename == "q" || filename == "quit"
    break
  elsif !WordCounter.check_file(filename)
    puts "Give proper file path."
    redo
  end

  obj = WordCounter.new(filename)
    
  puts "1. Read the contents of the file.\n2. Count the total number of words in the file.\n3. Count the occurrences of each unique word in the file.\n4. Write the word count data to a new file called word_count.txt.\nHow may I help you?(1, 2, 3 or quit)"
  input = gets.chomp
  num = input.to_i
  if num == 1
    puts obj.readfile
  elsif num == 2
    puts obj.count_words
  elsif num == 3
    puts obj.count_unique_words
  elsif num == 4
    puts obj.update_word_count
  elsif input == "quit" || input == "q"
    switch = "quit"
  else
    puts "Enter proper value."
    redo
  end
end
