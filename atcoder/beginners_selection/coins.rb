a=gets.to_i
b=gets.to_i
c=gets.to_i
x=gets.to_i
cnt=0
(a+1).times do |j|
  (b+1).times do |k|
    (c+1).times do |l|
      cnt+=1 if x==500*j+100*k+50*l
    end
  end
end
puts cnt
