MAX_PINS = 10

class Line

  attr_reader :score

  def try( pins )
    @score ||= pins
  end

  def frame( pins )
    @score ||= pins.inject(:+)
  end

  def frames( pins )
    @score ||= pins.inject(:+)
  end

  def is_spare_frame?( pins )
    pins.inject(:+) == MAX_PINS
  end

end
