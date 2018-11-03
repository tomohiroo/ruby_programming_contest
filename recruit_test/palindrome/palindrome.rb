def main(argv)
  f = File.open(argv[0])
  word = f.read
  f.close
  puts get_palindrome word
end

# def main(argv)
#   f = File.open(argv[0])
#   word = f.read
#   f.close
#   puts get_palindrome word
# end

def get_palindrome argv
  word = argv.chars.to_a.map { |s| [s, "#"] }.flatten
  i = 0
  j = 0
  r = []
  while i < word.size
    while word[i-j] == word[i+j] && i-j >= 0 && i+j < word.size
      j += 1
    end
    r[i] = j
    k = 1
    while i-k >= 0 && i+k < word.size && k+r[i-k] < j
      r[i+k] = r[i-k]
      k += 1
    end
    i += k
    j -= k
  end
  max_r = r.max
  max_idx = r.index max_r
  return word[(max_idx - max_r + 1)..(max_idx + max_r - 1)].join.tr("#", "")
end

main(ARGV)
