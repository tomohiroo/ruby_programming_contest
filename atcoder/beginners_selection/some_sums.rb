n, a, b = gets.chomp.split.map(&:to_i)
ans = (0..n).inject(0) do |sum, i|
  # Array#sumはruby2.4の機能なのでatcoderではサポートされていない
  s = i.to_s.split('').map(&:to_i).inject(&:+)
  if s >= a && s <= b
    sum + i
  else
    sum
  end
end

puts ans