digit =0..9

puts digit.include?(5)
ret=digit.min

puts "Minimum value is #{ret}"

req=digit.max 
puts "Maximum value is #{req}"

score=70

result=case score
when 0..40 then "Fail"
when 41..60 then "pass"
when 61..70 then "Pass With merit"
when 71..100 then "Pass With Distinction"
else 
	"Invalid score"	
end
puts result