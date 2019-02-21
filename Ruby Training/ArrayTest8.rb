a=Array.new(2,Hash.new )
a[0]['cat']='feline'
a[1]['cat']='felix'

puts a

b=Array.new(2) {Hash.new}

 b[0]['cat']='feline'
 b[1]['cat']='felixe'

 puts b[0]
 puts b[1]