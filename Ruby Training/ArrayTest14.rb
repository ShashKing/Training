a=["a","b","b","b","c"]
a.delete("b")
print a
puts " "
print a.delete("z")
puts " "
print a.delete("z"){"not found"}
puts " "
print a
puts " "

a.delete_at(1)
print a
puts " "
