class Test16 
	
	def initialize(w,h)
		@width=w
		@height=h
		
	end
	def area

		return"Area is #{@width*@height}"
		
	end
end

class Perimeter < Test16 
	def area
		puts super()
		return"Perimeter is #{2*(@width+@height)}"
		
	end
	
	
end

per=Perimeter.new(10,20)
puts per.area