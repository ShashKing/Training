begin

	#raise 'Exception generates'
	puts "Not an Exception"
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
else
	puts "Else in Exception"
ensure
	puts "Ensure Exception"
end