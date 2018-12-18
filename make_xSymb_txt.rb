#!/usr/bin/ruby

#DESCRIPTION:

#Create your file with a specified number of characters based on an arbitrary text string.

test_length = 4999

text_str = "Test test test test test test. Test test test test test test? Test test test test test test! Test test test test test test\n"

file_name = "d:/work/textcleaner/subtitle_#{test_length}char.txt"

text = ""

test_str_length = text_str.length

count = test_length / test_str_length + 1

count.times do
	text = text + text_str
end

text_test_length = text[0...test_length]
print "\nTest text lenth = ", text_test_length.length, "\n\n"

puts text_test_length

File.open(file_name,"w") do |file|
file.puts text_test_length
end