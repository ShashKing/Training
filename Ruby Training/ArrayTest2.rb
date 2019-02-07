num=Array[1,2,3,"Kumar",5,8,6,4,"Shashank"]
puts num
print num[3]
print num[8]
puts " "
puts num[2..6]
puts num[1,6]

puts num.at(1)
puts num.fetch(5)
puts num.fetch(5,"oops")
puts num.first
puts num.last