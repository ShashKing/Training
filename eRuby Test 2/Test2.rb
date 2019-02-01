
class Test
	def add(*test)
		puts "Number of parameter #{test.length}"
		for i in 0..test.length-1
			puts "The parameter is #{test[i]}"
	end

end
t1=Test.new
t1.add "C++","Java"
t1.add "1","Shashank","Neha","2"
t1.add "Akash","Arpan","Alok","Prince","Shashank"
end