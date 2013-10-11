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
    @score = 0
    pins.each_index do |i|
      if i.even? && is_spare_frame?( pins[ i, 2 ] )
        @score = @score + MAX_PINS + pins[ i+2 ] + pins[ i+3 ]
      elsif i.even? && !is_spare_frame?( pins[ i, 2 ] )
        @score = @score + pins[ i ] + pins[ i+1 ]
      end
    end
  end

  def is_spare_frame?( pins )
    pins.inject(:+) == MAX_PINS
  end

end
