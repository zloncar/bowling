MAX_PINS = 10

class Line

  attr_reader :score

  def try( pins )
    @score = pins
  end

  def frame( *pins )
    @score = pins.inject(:+)
  end

end
