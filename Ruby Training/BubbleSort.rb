arr=Array[99,66,25,5,3,4,6,1,3,2,45,85] 
puts "Unsorted Array=#{arr}"
n=arr.length
for i in 0...n-1
	for j in 0...n-1-i
		if arr[j]>arr[j+1]
			
		
			arr[j],arr[j+1]=arr[j+1],arr[j]
			swapped=true
		end
	end
end
print "Sorted Array= #{arr}"
puts " "