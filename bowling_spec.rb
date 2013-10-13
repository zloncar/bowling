require_relative 'bowling.rb'

describe "ten-pin bowling" do

  it "rolls - none cleared" do
    roll = [ 2, 3, 7, 1, 4, 4 ]
    expect( score( roll, 0, [1] ) ).to eq( 21 )
  end

  it "rolls - one spare" do
    roll = [ 2, 3, 7, 3, 4, 4 ]
    expect( score( roll, 0, [1] ) ).to eq( 31 )
  end

  it "rolls - few spares" do
    roll = [ 2, 8, 7, 3, 4, 4, 9, 1, 2, 2 ]
    expect( score( roll, 0, [1] ) ).to eq( 64 )
  end

  it "rolls - spare at the end" do
    roll = [ 2, 3, 4, 6, 4 ]
    expect( score( roll, 0, [1] ) ).to eq( 19 )
  end

  it "rolls - one strike at the end" do
    roll = [ 10, 0, 3 ]
    expect( score( roll, 0, [1] ) ).to eq( 13 )
  end

  it "rolls - strike with only one frame left" do
    roll = [ 10, 0, 3, 5 ]
    expect( score( roll, 0, [1] ) ).to eq( 26 )
  end

  it "rolls - strike with two frames left" do
    roll = [ 10, 0, 3, 5, 2, 4 ]
    expect( score( roll, 0, [1] ) ).to eq( 38 )
  end

  it "rolls - strikes, spares, all ..." do
    roll = [ 2, 5, 6, 4, 10, 0, 1, 2, 3, 4 ]
    expect( score( roll, 0, [1] ) ).to eq( 57 )
  end

end
