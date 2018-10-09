class Animal
  def sound
    puts "generic sound (static)"
  end

  def callSound
    self.sound()
  end
end
class Dog < Animal
  def sound
    puts "Bark! (dynamic)"
  end
end 
spot = Dog.new()
spot.callSound()
