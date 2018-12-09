n, x = gets.split.map(&:to_i)
burger = '1'

n.times { |_| burger = "0#{burger}1#{burger}0" }

puts burger[0..x].count('1')
