a=["a","b","c","d"]
print a.fill("x")
puts " "
print a.fill("z",2,2)
puts " "
print a.fill("y",0..1)
puts " "
print a.fill{|i| i*i}
puts " "