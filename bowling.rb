MAX_PINS = 10
class Line

  def score( rolls, total, spare )
    if rolls.size.zero?
      total
    else
      total += ( rolls[0,2].inject(:+) * spare )
      spare = rolls[0,2].inject(:+) == 10 ? 2 : 1
      2.times { rolls.shift }
      score( rolls, total, spare )
    end
  end

end
