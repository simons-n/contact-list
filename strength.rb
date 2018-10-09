def strongTypeTest
  begin
    strInt = "42"
    int = 42
    str = "The answer is "
    answer = str + strInt
    puts answer
    answer = str + int
    puts "if this is printed, weakly typed"
  rescue #=> e
    puts " if this prints, strongly typed"
  ensure
    puts "end"
  end
end
strongTypeTest()
