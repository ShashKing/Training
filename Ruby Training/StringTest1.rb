def check_string(my_str,my_substr)
	if my_str.include? my_substr

		return "Substring present in String"
		
	else
		return "Substring is not present in string"		
	end
end
print check_string("JavaScript","Script")
puts " "
print check_string("JavaScript","Scriptt")
puts " "
	