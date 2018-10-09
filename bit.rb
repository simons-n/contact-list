fortytwo = 42
thirtyone = 31

print "42 as binary: ", fortytwo.to_s(2)
puts
print "31 as binary: ", thirtyone.to_s(2)
puts

new = thirtyone & 17 
print "11111 & 10001: ", new.to_s(2) 
puts
print "new int value: ", new
puts

new2 = fortytwo >> 2
print "101010 >> 2: ", new2.to_s(2)
puts
print "new int value: ", new2
puts


