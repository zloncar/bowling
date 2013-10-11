require_relative 'bowling.rb'

describe "ten-pin bowling" do
  before( :each ) { @line = Line.new }

  it "one try" do
    @line.try( 8 )
    expect( @line.score ).to eq( 8 )
  end

  it "one frame" do
    @line.frame( [ 8, 1 ] )
    expect( @line.score ).to eq( 9 )
  end

  it "many frames" do
    @line.frames( [ 1, 2, 3, 4, 5, 6, 7, 8 ] )
    expect( @line.score ).to eq( 36 )
  end

  it "check if spare" do
    expect( @line.is_spare_frame?( [ 7, 3 ] ) ).to eq( true )
  end

  it "frames have one spare" do
    pending
    @line.frames( [ 1, 2, 3, 4, 5, 5, 6, 1 ] )
    expect( @line.score ).to eq( 34 )
  end

end
