def is_valid? bin
  return false if bin.include? "11"
  true
end

h, w, k = gets.split.map(&:to_i)

transition = Array.new(w + 1) { Array.new(w + 1, 0) }
transition[0][0] = 1 if w == 1
(2 ** (w - 1)).times do |i|
  bin = i.to_s(2)
  if is_valid? bin
    bin = bin.rjust(w - 1, '0')
    (w - 1).times do |k|
      if bin[k] == "1"
        transition[k][k + 1] += 1
        transition[k + 1][k] += 1
      elsif k == 0
        transition[0][0] += 1
      elsif bin[k - 1] == "0"
        transition[k][k] += 1
      end
      transition[w - 1][w - 1] += 1 if bin[k] == "0" && k == w - 2
    end
  end
end

dp = Array.new(h + 1) { Array.new(w + 1, 0) }
dp[0][0] = 1

mod = 1000000007
1.upto (h) do |i|
  w.times do |j|
    dp[i][j] = (dp[i - 1][j - 1] * transition[j - 1][j] + dp[i - 1][j] * transition[j][j] + dp[i - 1][j + 1] * transition[j + 1][j]) % mod
  end
end

p dp[h][k - 1]