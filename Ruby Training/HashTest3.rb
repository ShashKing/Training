def show(n,options={})
	if options.empty?
		puts "My name is #{n}"
		
	else
		puts "My name is #{n} and I am #{options[:age]}"+
		" years old and I live in #{options[:city]} "
	end


end
show("Shashank")
show("Shashank", {age: 23,city:"New Delhi"})
show("Neha", age: 20,city:"Khora")