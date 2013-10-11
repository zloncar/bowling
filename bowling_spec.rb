require_relative 'bowling.rb'

describe "ten-pin bowling" do
  before( :each ) { @line = Line.new }

  it "one try" do
    @line.try( 8 )
    expect( @line.score ).to eq( 8 )
  end

  it "one frame" do
    @line.frame( 8, 1 )
    expect( @line.score ).to eq( 9 )
  end

end
