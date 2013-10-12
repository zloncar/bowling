require_relative 'bowling.rb'

describe "ten-pin bowling" do

  it "total from rolls - none cleared" do
    line = Line.new
    roll = [ 2, 3, 7, 1, 4, 4 ]
    expect( line.score( roll, 0, 1 ) ).to eq( 21 )
  end

  it "total from rolls - spares" do
    line = Line.new
    roll = [ 2, 3, 7, 3, 4, 4 ]
    expect( line.score( roll, 0, 1 ) ).to eq( 31 )
  end
end
