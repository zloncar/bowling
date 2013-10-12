require_relative 'bowling.rb'

describe "ten-pin bowling" do

  it "calculate total from several rolls" do
    line = Line.new
    roll = [ 2, 3, 7, 1, 4, 4 ]
    expect( line.score( roll ) ).to eq( 21 )
  end

end
