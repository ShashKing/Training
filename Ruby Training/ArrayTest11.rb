arr=["margenta","red","blue","green"]
brr=["black","white","grey","viloet"]
crr=["pink","sky blue","light green","orange"]
a=[arr,brr,crr]
puts a.assoc("pink")
puts a.assoc("foo")
puts arr.at(-1)

err=[0,4,7,10,12]
drr=err.bsearch{|x| x>=4}
puts drr