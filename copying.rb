class Sheep
  def initialize(name)
    @name = name
  end
  def getName
    return @name
  end
end
molly = Sheep.new("Molly")
dolly = molly.dup
if molly.getName.object_id == dolly.getName.object_id
  puts "shallow"
else
  puts "deep"
end
