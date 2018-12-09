def patties_num_of_level(n, x)
  if n == 0
    return 1
  end

  if x == 1
    return 0
  elsif x.between?(2, @a[n - 1] + 1)
    return patties_num_of_level(n - 1, x - 1)
  elsif x == @a[n - 1] + 2
    return @p[n - 1] + 1
  elsif x.between?(@a[n - 1] + 3, @a[n] - 1)
    return @p[n - 1] + patties_num_of_level(n - 1, x - @a[n - 1] - 2) + 1
  else
    return @p[n - 1] * 2 + 1
  end
end

N, X = gets.split.map(&:to_i)

@a = [1]
@p = [1]

N.times do |i|
  @a << (@a[i] * 2 + 3)
  @p << (@p[i] * 2 + 1)
end

puts patties_num_of_level(N, X)
