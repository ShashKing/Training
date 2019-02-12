class ObjectTest5
	attr_accessor :width,:height
	def initialize(w,h)
		@width,@height=w,h
	end
	def getArea
		@width*@height
end
end
box1=ObjectTest5.new(10,20)
box2=ObjectTest5.allocate
a=box1.getArea
puts "Are of the box is #{a}"
a=box2.getArea
puts "Area of the box is #{a}"