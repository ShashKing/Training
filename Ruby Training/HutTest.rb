n=1
k=5
o=5
for i in 0...5

	print " "*(k)
	print "*"
	if i==0
		print "*"*((k*2))

	end
	print " "*(n-1)
	print " "*(n-1)
	
	print "*"
	if i!=0
		print " "*((o*2)-1)
		print "*"


		
	end
	
	print "\n"
	n+=1
	k-=1
	
	end
	print "*"*22
	puts " "
	m=1
	l=5
	for j in 0...5
		
		print "*"
		print " "*(m-1)
		print " "*(l-1)
		print " "*(m-1)
		print " "*(l)
		print "*"
		print " "*(m-1)
		print " "*(l-1)
		print " "*(m)
		print " "*(l)
		print "*"
		print "\n"
		
		l-=1
		m+=1
	end
	print "*"*22
	puts " "

