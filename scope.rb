$glVar = 42
def changeVar
  glVar = 343
  if 343 == scopeTest()
    puts "Ruby has dynamic scope"
  else
    puts "Ruby has static scope"
  end
end

def scopeTest
  result = $glVar * 1 
  return result
end
changeVar()
