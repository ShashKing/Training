class ObjectTest5
	puts "class name is #{self.name}"
	attr_accessor :width,:height
	def initialize(w,h)
		@width,@height=w,h
	end
	
end
box1=ObjectTest5.new(10,20)
box2=ObjectTest5.allocate

