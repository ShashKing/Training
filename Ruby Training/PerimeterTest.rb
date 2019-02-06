class Test24 
	def per(r)
		perimeter=2*3.14*r
		return perimeter
		
	end
	def area(r)
		ar=3.14*r*r
		return	ar
		end	
	t=Test24.new
	puts t.per(5.0).to_f
	puts t.area(5.0).to_f
end