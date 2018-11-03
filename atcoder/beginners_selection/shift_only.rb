n=gets.to_i
a=gets.split.map &:to_i
c=-1
f=true
while f
    n.times do |i| 
        f=false if a[i]%2!=0
        a[i]/=2
    end
    c+=1
end
puts c

