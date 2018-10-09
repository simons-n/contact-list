def elseTest(val)
  if 0 < val
  if val % 2 == 0
  puts "even"
  puts "positive"
  else 
  puts "not positive"
  end  # if one of these ends were not here,
  end  # there would be a syntax error
end
elseTest(4)
