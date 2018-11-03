gets
cards = gets.split.map(&:to_i)

cards = cards.sort.reverse
alice = 0
bob = 0
cards.each_with_index do |v, i|
  if i.even?
    alice += v
  else
    bob += v
  end
end
p alice - bob