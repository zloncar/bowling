MAX_PINS = 10
def score( rolls, total, spare )
  if rolls.size.zero?
    total
  else
    frame_score = rolls[0,2].inject(:+)
    total += ( frame_score * spare.shift )
    if rolls.first == MAX_PINS
      2.times { spare.push( 2 ) }
    elsif rolls[0,2].inject(:+) == MAX_PINS
      spare << 2
    else
      spare << 1
    end
    2.times { rolls.shift }
    spare[0] = 1 if rolls.size == 1
    score( rolls, total, spare )
  end
end
