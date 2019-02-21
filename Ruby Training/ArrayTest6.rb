arr=[1,2,3,4,5,6]
print arr.select{|a| a>3}
puts ""
print arr.reject{|a| a<3}
puts ""
print arr.drop_while{|a| a<4}
puts ""
puts arr

puts arr.delete_if { |a| a <4  }
puts arr.keep_if {|a| a<4 }