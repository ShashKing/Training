s=[1,2,3]
t=[4,5,6,[7,8]]
a=[s,t,9,10]

print a.flatten
puts " "

arr=[1,2,[3,[4,5]]]
print arr.flatten
puts " "
print a.flatten(1)
puts " "
print a.flatten(2)
puts " "
print arr.flatten!
puts ""
print arr.flatten!
puts " "
print arr.flatten!(1)