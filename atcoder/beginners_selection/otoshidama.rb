def pay n, y
  (n+1).times do |a|
    (n - a + 1).times do |b|
      c = n - a - b
      if y == a * 10000 + b * 5000 + c * 1000
        puts "#{a} #{b} #{c}"
        return
      end
    end
  end
  puts "-1 -1 -1"
end

n, y = gets.split.map(&:to_i)
pay n, y