s = gets.chomp.reverse
while true
  if s == ""
    puts 'YES'
    break
  elsif s[0..4] == "maerd"
    s = s[5..-1]
  elsif s[0..6] == "remaerd"
    s = s[7..-1]
  elsif s[0..4] == "esare"
    s = s[5..-1]
  elsif s[0..5] == "resare"
    s = s[6..-1]
  else
    puts 'NO'
    break
  end
end


