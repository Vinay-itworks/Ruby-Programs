# Task 2

series = ["hello", "oto", "friend", "txt"]
palindromes = []
# ['o', 'l', 'l', 'e' ,'h']
for word in series do
  max =  word.length
  rev = []
  for i in 0...max do
    rev = rev.unshift(word[i])    
  end
  rev = rev.join()
  if word == rev
    palindromes.push(word)
  end
end

puts palindromes