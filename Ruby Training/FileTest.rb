aFile=File.open("test.txt","w")
if aFile
	content=aFile.syswrite("Shashank")
	puts content
else
	puts "Unable to open file"
end

aFile=File.open("test.txt","r")
if aFile
	content=aFile.sysread(8)
	puts content
else
	puts "Unable to open file"
end

