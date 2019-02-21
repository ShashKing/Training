class MethodOverridingTest 
	def initialize(w,l)
		@width=w
		@length=l
		
	end
	
	def getArea
		@a= @width+@length
		puts "Area is #{@a}"
	end
	
end
class Test3 < MethodOverridingTest
	def getArea
		super
		 @area=@width*@length
		puts "Area is #{@area}"
	end
	
end
t3=Test3.new(10,20)
t3.getArea()

