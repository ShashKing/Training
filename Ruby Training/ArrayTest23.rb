a=["a","b","b","b","c"]
b=a.rindex("b")
c= a.rindex("z")
d=a.rindex{|x| x=="b"}
print b
puts 
print c
puts
print d
puts 

e=["a","b","c","d"]
h=e.rotate
f=e.rotate(2)
g=e.rotate(-3)
i=e.rotate!(2)
j=e.rotate!(-3)
print h
puts 
print f
puts
print g
puts 
print i
puts
print j
puts 