require 'bigdecimal'
require 'bigdecimal/util'

print "0.5".to_d
puts

puts "Hello from #{self.to_s}"
a="hello"
a<<"world"
puts a.concat(33)

string = "ruby programming"
puts string.start_with? "ruby"

puts string.end_with? "programming"

string1 = "bacon, is, expensive"
#str2=string1.delete_suffix(" is expensive")
str2=string1.split(",")
puts str2
puts str2.join
string2=['a','b','c']
 string2.join("-")
 print string2
 puts "49"*2
 puts "49".to_i*2
 puts "a"*3
 puts "a".to_i*3
 puts "123".match?(/\A-?\d+\z/)
 puts "123bb".match?(/\A-?\d+\z/)

puts str5=""
puts  str5<<"hello"
puts str5<<" "
puts str5<<"there"
puts str5