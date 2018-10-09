str1 = "string one"
str2 = String.new("string two\0")
str3 = str1 + str2
str4 = str2 * 2
str5 = str1 << "!"
puts str1
puts str2
puts str3
puts str4
puts str5
puts str1 <=> str2 # should print -1
puts str1 == str1 # should print true
puts str1 == 8448 # should print false
puts str1.capitalize # should print String one!
puts str1.length #should print 11
puts str1.chop #should print string one



