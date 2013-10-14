def score( rolls, total, spare )
  if rolls.size.zero?
    total
  else
    frame_score = rolls[0,2].inject(:+)
    total += ( frame_score * spare.shift )
    how_many = rolls.first == 10 ? 2 : 1
    if rolls[0,2].inject(:+) == 10
      how_many.times { spare << 2 }
    else
      spare << 1
    end
    2.times { rolls.shift }
    spare[0] = 1 if rolls.size == 1
    score( rolls, total, spare )
  end
end
