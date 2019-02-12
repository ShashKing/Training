class ObjectTest6 
	BOX_COMPANY	="Tata Inc"
	BOXWEIGHT=10
	def initialize(w,h)
		@widht,@height=w,h
		
	end
	def getArea
		@widht * @height
		
	end
	
end
box=ObjectTest6.new(10,20)
a=box.getArea
puts "Area of the box is : #{a}"
puts ObjectTest6::BOX_COMPANY
puts "Box weight is : #{ObjectTest6::BOXWEIGHT}"