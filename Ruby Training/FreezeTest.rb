class Box
	attr_accessor :width,:height
	def initialize(w,h)
		@width=w
		@height=h
		
	end
end
box=Box.new(10,50)
puts box.width
puts box.height

box.freeze
if (box.frozen?)
puts "box frozen"

else
	puts "box is not frozen"
	
end
