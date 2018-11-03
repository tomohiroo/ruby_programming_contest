def main(argv)
  f = File.open(argv[0])
  word = f.read
  f.close
  puts get_palindrome word
end

def get_palindrome word
  size = word.size
  (size - 1).downto 1 do |i|
    (size - i).times do |j|
      return word[j..(j+i)] if word[j..(j+i)] == word[j..(j+i)].reverse
    end
  end
end

main(ARGV)