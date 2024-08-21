# Program 2:
# Design a Ruby class named WordCounter that reads a text file called input.txt.
# Implement methods to:
# 1. Read the contents of the file.
# 2. Count the total number of words in the file.
# 3. Count the occurrences of each unique word in the file.
# 4. Write the word count data to a new file called word_count.txt.

class WordCounter

  def self.readfile(file_name)
    content = IO.readlines(file_name)
    if content
      return content
    else
      return "Unable to open file!"
    end
  end

  def self.count_words(file_name)
    count = 0
    content = IO.readlines(file_name)
    for i in content
      count += i.split(" ").count
    end
    return count
  end

  def self.count_unique_words(file_name)
    record = {}
    data = []
    content = IO.readlines(file_name)
    for i in content
      data << i.split(" ")
    end
    words = data.flatten
    unique_words = data.flatten.uniq
    for i in unique_words
      record[i] = words.count(i)
    end
    return record.sort_by {|key, value| value}.reverse.to_h
  end

  def self.update_word_count(file_name)
    file = File.new("word_count.txt", "w+")
    word_count = self.count_words(file_name)
    unique_word_count = self.count_unique_words(file_name)
    write = "#{word_count}\n#{unique_word_count}"
    file.syswrite(write)
    return write
  end

end

puts WordCounter.readfile("file.txt")

puts WordCounter.count_words("file.txt")

puts WordCounter.count_unique_words("file.txt").inspect

puts WordCounter.update_word_count("file.txt")
