input = gets.chomp.split('')
ans = ''
input.each do |l|
  if l == '0'
    ans.insert -1, "0"
  elsif l == '1'
    ans.insert -1, "1"
  elsif ans.length > 0
    ans = ans[0..-2]
  end
end
puts ans
