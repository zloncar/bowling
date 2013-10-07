describe "ten-pin bowling" do

  PINS = 10

  it "one try" do
    try = Try.new( 8 )
    expect( try.score).to eq( 8 )
  end

  it "one frame" do
    try1 = Try.new( 6 )
    try2 = Try.new( 3 )
    frame = Frame.new
    frame.score = [try1.score, try2.score]
    expect( frame.score ).to eq( 9 )
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
