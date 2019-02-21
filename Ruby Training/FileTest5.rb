a="My name is Shashank"
b="I live in delhi"
aFile =File.open("test.txt","a")
bFile =File.open("test.txt","r")
if aFile && bFile
	puts "Hello World"
	content=aFile.syswrite(a+""+b)
	content1=bFile.sysread(150)
	puts content1

else
	puts "Files does not exist"
end