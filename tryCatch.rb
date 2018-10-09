class CustomError < ZeroDivisionError
end

def tryCatchTest
  begin
    
    raise CustomError
    y = 3/0
    puts "In begin block"
    return
  rescue CustomError
    puts "Custom Error was raised, rescued"
  rescue ZeroDivisionError
    puts "zero division error"
  ensure
    puts "In the finally block"
  end
end
tryCatchTest()
