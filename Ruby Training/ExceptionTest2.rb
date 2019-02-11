begin
	puts "before raise"
	raise "An error occured"
	puts "After raise"
rescue 
	puts "Error rescued"

end
puts "Outside begin block"