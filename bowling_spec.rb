require_relative 'bowling.rb'

describe "ten-pin bowling" do

  it "one try" do
    try = Try.new( 8 )
    expect( try.score).to eq( 8 )
  end

end
