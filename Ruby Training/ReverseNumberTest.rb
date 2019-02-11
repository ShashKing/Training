reverse=0
number=gets.chomp.to_i
	while number != 0
		rem=number%10
		reverse=reverse*10+rem
		number/=10
	end
	print reverse
	

