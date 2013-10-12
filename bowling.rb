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


def blah( a, total )
  if a.size.zero?
    total
  else
    total += a[0,2].inject(:+)
    2.times { a.shift }
    blah(a, total)
  end
end







