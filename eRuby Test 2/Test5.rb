city="Delhi"
country="India"
puts "#{city} is the capital of #{country}"

str="Original String is "
str<<"modified "
str<<"again and again"
puts str
str.freeze

puts "abc"=="abc"
puts "as ab"=="ab ab"
puts "23"=="23"

puts "ttt".eql?"ttt"
puts "12".eql?"12"

puts "Java".casecmp "Java"
puts "Java".casecmp "java"
puts "Java".casecmp "ja"