n = gets.to_i
max = [0, 0]
ps = (0...n).map do |i|
  n = gets.to_i
  max = [i, n] if n > max[1]
  n
end
ps[max[0]] /= 2
puts ps.inject(&:+)
