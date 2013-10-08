MAX_PINS = 10
$total = 0

def play
  Line.new
end


class Line
  def initialize
    @line = Hash.new( 0 )
    (1..10).each do |frame|
      try1 = ( rand() * 10 ).to_i
      try2 = ( rand() * 10 ).to_i
      $total += try1 + try2
      @line[frame] = [ try1, try2 ]
    end
  end

  def line
    @line
  end

  def total
    @total = 0
    @line.each { |k, v| @total += v[0] + v[1] }
    @total
  end
end

class Try
  def initialize( score )
    @score = score
  end

  def score
    @score
  end
end


class Frame
  def score
    @score
  end

  def score=( scores )
    @score = scores.first + scores.last
    @score = MAX_PINS if @score > MAX_PINS
  end
end
