_, m = gets.split.map(&:to_i)
geo_data = []
1.upto m do |i|
  prefecture_id, established_year = gets.split.map(&:to_i)
  geo_data.push({ idx: i, prefecture_id:  prefecture_id, established_year: established_year })
end

geo_data.group_by { |h| h[:prefecture_id] }.map do |_, v|
  v.sort_by { |h| h[:established_year] }.map.with_index 1 do |h, i|
    { idx: h[:idx], id: "#{"%#06d" % h[:prefecture_id]}#{"%#06d" % i}"}
  end
end.flatten.sort_by { |a| a[:idx] }.each { |a| puts a[:id] }
