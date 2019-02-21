begin

	raise 'Exception generates'
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
end