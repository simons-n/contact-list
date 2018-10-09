def ctrlTest(x, y, z)
  if x > 0
    puts "positive" 
  elsif x == 0
    puts "zero" #should print first time
  else 
    puts "negative" #should print second time
  end
  unless y == 3
    puts "y is not 3" #should print first time but not second
  end
  zVal = case
           when z % 2 == 0 then "even" #should print first time
           when z % 2 == 1 then "odd" #should print second time
           else "this shouldn't have happened!"
           end
  puts zVal
  i = 0
  until i >= 3
    print "i is ", i, "\n"
    i = i + 1
  end
  bananaList = [1, 33, 700]
  for item in bananaList do
    print item, " "
  end
  print "\n"
  print bananaList.map{|x| x+1}, "\n"
  2.upto(5){|x| puts x*2}
  puts
end
ctrlTest(0, 4, 52)
ctrlTest(-1, 3, 11)
