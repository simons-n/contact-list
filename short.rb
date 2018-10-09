def shortTest(x)
  if 0 == x || func2(x) 
    puts "If this is the only line printed, short circuit eval"
  end
end

def func2(x)
  puts "If this is printed, not short circuit eval"
  return true
end

shortTest(0)
