describe "ten-pin bowling" do

  MAX_PINS = 10
  $total = 0

  it "one try" do
    try = Try.new( 8 )
    expect( try.score).to eq( 8 )
  end

  it "one frame" do
    try1 = Try.new( 6 )
    try2 = Try.new( 3 )
    frame = Frame.new
    frame.score = [ try1.score, try2.score ]
    expect( frame.score ).to eq( 9 )
  end

  it "one line no spares no strikes" do
    game = play
    expect( game.total ).to eq( $total )
  end

  it "two tries add up to ten" do
    frame = Frame.new
    try1 = ( rand() * 10 ).to_i
    try2 = ( rand() * 10 ).to_i
    frame.score = [ 2, 3 ]
#   puts frame.score
#   expect( frame.score ).to be <= 10
  end

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
    end
  end

end
