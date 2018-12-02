n = gets.to_i

factoring = Array.new(n + 1, 0)

2.upto(n) do |i|
  2.upto(i) do |j|
    while i % j == 0
      factoring[j] += 1
      i /= j
    end
  end
end

cnt = 0

n.times do |i|
  next if factoring[i] < 4
  i.times do |j|
    next if factoring[j] < 4
    n.times do |k|
      cnt += 1 if k != i && k != j && factoring[k] > 1
    end
  end
end

n.times do |i|
  next if factoring[i] < 24
  n.times do |j|
    cnt += 1 if i != j && factoring[j] > 1
  end
end

n.times do |i|
  next if factoring[i] < 14
  n.times do |j|
    cnt += 1 if i != j && factoring[j] > 3
  end
end

n.times do |i|
  cnt += 1 if factoring[i] > 73
end

puts cnt
