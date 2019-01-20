def watering(h)
  min = h.map { |v| v.zero? ? 101 : v }.min
  min_i = h.index min
  l = 0
  r = h.size - 1
  # ((min_i - 1)..0).each do |i|
  (min_i - 1).step 0, -1 do |i|
    if h[i].zero?
      l = i + 1
      break
    end
  end
  ((min_i + 1)..r).each do |i|
    if h[i].zero?
      r = i - 1
      break
    end
  end
  (l..r).each { |i| h[i] -= min }
  [h, min]
end

n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
while h.any? { |i| i != 0 }
  h, num = watering h
  ans += num
end
puts ans
