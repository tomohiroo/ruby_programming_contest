def traveling n
  t = 0
  x = 0
  y = 0
  n.times do
    next_t, next_x, next_y = gets.split.map(&:to_i)
    if ((next_x - x).abs + (next_y - y).abs - (next_t - t)).odd? || ((next_x - x).abs + (next_y - y).abs) > (next_t - t)
      puts 'No'
      return
    end
    t, x, y = next_t, next_x, next_y
  end
  puts 'Yes'
end

traveling gets.to_i
