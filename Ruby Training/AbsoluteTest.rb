puts "Enter the number"
number =gets.chomp.to_i
if number>33
	numb=((number-33)*2).abs
	puts numb
	
else
	num=(number-33).abs
	puts num
	
end