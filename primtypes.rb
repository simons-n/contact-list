def main
  dec = -42
  dec2 = 0d4231
  und = 53_2_9339
  bin = 0b10101
  oct = 0222
  hex = -0x32
  float = 0.4556
  puts dec
  puts dec2
  puts und
  puts bin
  puts oct
  puts hex
  puts float
  print "size of Fixnum: ", 42.size, "\n"
  print "size of Bignum 9028323455246666632235570928347509824735: ", 9028323455246666632235570928347509824735.size, "\n"
  print "size of Bignum 123423422345234452312345231: ", 123423422345234452312345231.size, "\n"
  str = "This is a string \nThis is a second line \0"
  puts str
  print "size of string: ", str.size, "\n"
end
main()
