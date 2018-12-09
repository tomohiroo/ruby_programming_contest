n, x = gets.split.map(&:to_i)
burger = 17

(n-1).times do |i|
  burger = 2**(2**(i + 2) - 4) + 2**(2**(i + 1)) * burger + 2 * burger + 1
end

puts burger.to_s(2)[0...x].count('0')
