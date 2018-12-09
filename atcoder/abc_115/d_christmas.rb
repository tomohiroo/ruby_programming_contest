def burger_level(n)
  return @burgers[n] unless @burgers[n].nil?
  @burgers[n] = "B#{burger_level(n - 1)}P#{burger_level(n - 1)}B"
end

n, x = gets.split.map(&:to_i)
@burgers = Array.new(n)
@burgers[0] = 'P'
level_n_burger = burger_level n
puts level_n_burger[0...x].count('P')
