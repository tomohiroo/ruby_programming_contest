def f a, b
  if b == 0
    a
  else
    f b, a % b
  end
end

# puts f 557, 31

def func n, m
  (n + m - 1) / m
end

# puts func 42, 4

def comb
  nums = (1...21).to_a
  a = 0
  3.upto 20 do |i|
    a += nums.combination(i).to_a.size
  end
  puts a
end

comb

def tree w
  i = 1
  w.chars.each do |l|
    if l == '左'
      i *= 2
    else
      i = i * 2 + 1
    end
  end
  puts i
end
#
# tree "右左左右右右左右"
# tree "右左右左左右右左"
