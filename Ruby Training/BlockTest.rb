BEGIN{
	puts "This is begin block"
}
def show
	puts "This is Method"
	yield 
end
show {
	|i|puts "This is block#{ i}"
}

END{
	puts "This is End block"
}

x="Outer Block"
3.times do|x|
	puts "Inside the block#{x}"
end
puts "Outside the block#{x}"