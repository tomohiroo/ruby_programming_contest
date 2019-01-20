def satisfaction(choice)
  point = choice.inject(0) { |prev, sushi| prev + sushi[:score] }
  neta_count = choice.map { |sushi| sushi[:neta] }.uniq.size
  point + neta_count**2
end

n, k = gets.split.map(&:to_i)
sushis = (1..n).map do |i|
  sushi = gets.split.map(&:to_i)
  { id: i, neta: sushi[0], score: sushi[1] }
end
$score_sort_sushi = sushis.sort_by { |sushi| sushi[:score] }.reverse

def improve_choice(choice)
  duplicated_sushis = choice.group_by { |h| h[:neta] }.select { |_, v| v.size > 1 }.values.flatten(1)
  return [] if duplicated_sushis == []
  id = duplicated_sushis.sort_by { |h| h[:score] }[0][:id]
  selected_netas = choice.map { |h| h[:neta] }.uniq
  $score_sort_sushi.each do |sushi|
    return choice.map { |v| (v[:id] == id) ? sushi : v } unless selected_netas.include? sushi[:neta]
  end
end

choice = (0...k).map { |i| $score_sort_sushi[i] }
iter = sushis.map { |h| h[:neta] }.uniq.size - choice.map { |h| h[:neta] }.uniq.size
ans = satisfaction choice

iter.times do
  choice = improve_choice choice
  break if choice == []

  satisfaction_new = satisfaction choice
  ans = satisfaction_new if satisfaction_new > ans
end

puts ans
