sum=1
for i in 1..5
	sum=sum*i
end
puts "#{sum}"


(0..5).each do |j|
	
	if j>2 then
		break
	end
	puts "Value id #{j}"
end

for k in 0..5
	
	if k<2 then
		next
	end
	puts "Value is #{k}"
end