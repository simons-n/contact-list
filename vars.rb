$school = "Bucknell University"  # global variable

class Student
  @@newStudent # class variable
  NUM = 2  # constant
  def initialize(name, gradYear, major)
    @name = name     #--|
    @year = gradYear     #--|== instance variables
    @major = major   #--|
    @@newStudent = name
  end
  def prntStudent
    print "#@name is majoring in #@major and graduates in #@year\n"
  end
  def double(x)
    product = NUM * x # local variable
    return product
  end
end



stdnt = Student.new("Nick", 2018, "CSCI")
stdnt.prntStudent()
puts stdnt.double(3) # should print 6
