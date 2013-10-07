describe "ten-pin bowling" do

  MAX_PINS = 10

  it "one try" do
    try = Try.new( 8 )
    expect( try.score).to eq( 8 )
  end

  it "one frame" do
    try1 = Try.new( 6 )
    try2 = Try.new( 3 )
    frame = Frame.new
    frame.score = [ try1, try2 ]
    expect( frame.score ).to eq( 9 )
  end

  it "one line no spares no strikes" do
    game = play
    puts "total = #{game.total}"
#   expect( total ).to eq( 17 )
  end

  def play
    Line.new
  end

  class Line
    def initialize
      @line = Hash.new( 0 )
      (1..10).each do |frame|
        @line[frame] = [ ( rand() * 10 ).to_i, ( rand() * 10 ).to_i ]
      end
    end
    def line
      @line
    end
    def total
      @total = 0
      @line.each { |k, v| @total += v[0] }
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
      @score = scores.first.score + scores.last.score
    end
  end

end
