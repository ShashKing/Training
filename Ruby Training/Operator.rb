a,b,c,e=10,20,2,2
ba=60
bb=13
#assume bitwise number
puts a+b
puts b-a
puts a*b
puts b/a
puts b%a
puts b**c
puts a==b
puts a!=b
puts a<b
puts a>b
puts a<=b
puts a>=b
puts a<=>b
puts a.eql?b
puts a.equal?b
d=a+b
puts d
d+=b
puts d
d-=b
puts d
d/=b
puts "Answer#{d}"
d%=b
puts d

e**=c
puts d
#bitwise operators
puts ba&bb
puts ba|bb
puts ba^bb
puts (~ba)
puts (~bb)
puts ba<<2
puts 2>>bb
#Ruby logical opertors
puts (a and b)
puts (a or b)
puts (a&&b)
puts (a||b)
puts !(a&&b)
puts not(a&&b)
=begin
This is a multiline comment and con spwan as many lines as you
like. But =begin and =end should come in the first line only. 
=end