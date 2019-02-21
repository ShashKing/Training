$global_variable=10
class Variable

	@@number_of_students=56
	VAR=65
	 def initialize(id,name,addr)
	 	@student_id=id
	 	@student_name=name
	 	@student_addr=addr
	 end
	 def display_details
	 	local_var="This is local variable"
	 	puts "Student id is #{@student_id}"
	 	puts "Student name is #{@student_name}"
	 	puts "Student address is #{@student_addr}"
	 	puts "value of local constant var is #{VAR}"
	 	puts "#{local_var}"
	 end
	 def number_of_student()
	 	@@number_of_students +=1
	 	puts "Number of Students=#{@@number_of_students}"
	 	
	 end
	def print_global1
		@@id=12
		puts "This is global Variable and value is #{$global_variable}"
		puts "Class Variable #{@@id}"
	end
	def show

		puts "Class Variable #{@@id}"
	end
end

class Class2 
	@@id=16
	def print_global1
		puts "This is global variable and value is #{$global_variable}"
		puts "Class Variable #{@@id}"
	end
	def show
		puts "Class Variable #{@@id}"	
	end
end

vst=Variable.new("101","Shashank","Delhi")
vst.display_details
vst.print_global1
vst.show
vst.number_of_student
c=Class2.new
c.print_global1
c.show