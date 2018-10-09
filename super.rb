class Guitar
  attr_reader :strings, :type, :whammy
  def initialize(type = "acoustic")
    @strings = 6
    @type = type
    @whammy = false 
  end
end

class Gibson < Guitar 
  def initialize(type)
    super
    @whammy = true
  end
end

elect = Gibson.new("electric")
acoust = Guitar.new
puts elect.strings # 6
puts elect.type    # electric
puts elect.whammy  # true

puts acoust.strings# 6
puts acoust.type   # acoustic
puts acoust.whammy # false
