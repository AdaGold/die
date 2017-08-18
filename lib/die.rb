# die.rb

class Die

  attr_reader :showing

  def initialize(sides =  6)

    if sides <= 1
      raise ArgumentError.new("A Die must have more than 0 side")
    end

    @sides = sides
    roll
  end

  def roll
    @showing = rand(@sides) + 1
  end

end



# def exponate(base, power)
#   return base ** power
# end
#
#
# puts exponate(3, 3) == 27
# puts exponate(4, 2) == 16
#
# puts exponate(-4, 2) == 16
# puts exponate(0, 2) == 0
# puts exponate(0, 0) == 1
# puts exponate(3, 0) == 1
