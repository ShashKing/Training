a = Array.[](5,6,7,8,2,1,4,99,3,4)
puts a
puts " "

puts a.at(-5)
puts a.fetch(6,"oops")
puts a.push(94)
puts a.unshift(10) 
puts a.insert(2,66)
puts " "
puts a

num=["Shashank",3,6,"Ram"]
puts num
puts " "
puts num[1..2]

my_name="shashank Kumar"
puts my_name.capitalize
puts my_name.upcase
puts my_name.downcase
puts my_name.reverse
puts my_name.length
puts my_name[3..7]

puts a.pop
puts a.shift
puts delete(4)
puts a.uniq