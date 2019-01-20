a, b, c = gets.split.map(&:to_i)
max = [a, b, c].max
puts a * b * c / max / 2
