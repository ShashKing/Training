puts "Enter your age"
num=gets.chomp.to_i
if num<18
	puts "Not qualified and your age is #{num}"
else
	puts "Qualified and your age is #{num}"
end

puts "Enter Your marks"
marks=gets.chomp.to_i
if marks<34
	puts "Fails"
	
elsif marks>34 && marks<70
	puts "Pass without distinct"
	
else
	puts "Pass with destinction"
	end

	puts "Enter your age"
	age=gets.chomp.to_i
	case age
	when 0..2
		puts "baby"
	when 3..6
		puts "little child"
		when 7..12
			puts "child"
		when 13..18
			puts "youth"	
		else
			puts "Adult"
				
	end