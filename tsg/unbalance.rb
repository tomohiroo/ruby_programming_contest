def unbalance? (word)
  word_size = word.length
  (word_size - 1).times do |i|
    return true, "#{i + 1} #{i + 2}" if word[i] == word[i+1]
  end
  (word_size - 2).times do |i|
    return true, "#{i + 1} #{i + 3}" if word[i] == word[i+2]
  end
  return false
end

flg, ans = unbalance? gets.chomp
if flg
  puts ans
else
  puts "-1 -1"
end