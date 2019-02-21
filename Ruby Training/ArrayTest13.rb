arr=["a","b",].concat(["c","d"])
print arr
puts " "
a=[1,2,3]
a.concat([4,5,6])
print a
puts " "
puts arr.count

puts a.count(2)
puts a.count{|x| x%2==0}