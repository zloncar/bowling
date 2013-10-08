require_relative 'bowling.rb'

describe "ten-pin bowling" do

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
    frame.score = [ try1, try2 ]
    expect( frame.score ).to be <= 10
  end

end
