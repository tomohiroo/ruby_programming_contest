new = gets.to_i
a = []
while !(a.include?(new))
  a << new
  new = a[-1].even? ? a[-1] / 2 : 3 * a[-1] + 1
end
puts a.size + 1
