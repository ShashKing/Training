arr=[1,2,3,4,5]
arr.each { |e| puts e -=10," "  }

words=%w[rats live on evil star]
str=""
str1=words.reverse_each { |word|str+= "#{word}"  }
puts str1