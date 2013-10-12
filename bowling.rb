MAX_PINS = 10
class Line

  def score( pins )
    total = 0
    if pins[ -4, 2 ].inject(:+) >= MAX_PINS
      total = total + MAX_PINS + 2 * pins[-2, 2].inject(:+)
      4.times { pins.pop }
      total += pins.inject(:+)
    else
      pins.inject(:+)
    end
  end


end

