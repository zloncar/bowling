MAX_PINS = 10
def score( rolls, total, spare )
  if rolls.size.zero?
    total
  else
    frame_score = rolls[0,2].inject(:+)
    total += ( frame_score * spare )
    spare = rolls[0,2].inject(:+) == MAX_PINS ? 2 : 1
    2.times { rolls.shift }
    spare = 1 if rolls.size == 1
    score( rolls, total, spare )
  end
end
