def opsTest
  begin
    puts 3 + 4
    puts 5 - 20.2
    puts 0.023 * 44
    puts 9858532292388593920590346111/4482274942281113
    puts 9 % 2
    puts 10**12
    puts 3/'q'
    puts "Ruby allows for nonsensical math operations"
  rescue
    puts "Ruby does not allow for nonsensical math operations"
  end
end
opsTest()
