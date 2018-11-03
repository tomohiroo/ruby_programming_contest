gets.to_i
nums = gets.split.map &:to_i
ans = (nums.min..nums.max).map do |i|
  nums.inject(0) { |sum, n| sum + (n - i) ** 2 }
end
puts ans.min
