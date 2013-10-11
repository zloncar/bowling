require_relative 'bowling.rb'

describe "ten-pin bowling" do
  before( :each ) { @line = Line.new }

  it "one try" do
    @line.try( 8 )
    expect( @line.total ).to eq( 8 )
  end

end
