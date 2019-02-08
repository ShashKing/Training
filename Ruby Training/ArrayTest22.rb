a=["a","b","c"]
b=a.push("d","e","f")
print b
puts " "
c= [1,2,3].push(4).push(5)
print c
puts " "
d=[[1,"one"],[2,"two"],[3,"three"],["ii","two"]]

print d.rassoc("two")
puts 
puts d.rassoc("four")

f=["a","b","c","d"]

e=f.replace(["e","f","j"])
print e
puts 
print e.reverse
puts 
print e.reverse!
puts 
l= e.reverse_each { |k|print k," !"  }
print l
puts 