require 'rover'

describe Rover do
  x = 1
  y = 2
  heading = :N
  let(:rover) { described_class.new(x, y, heading) }

  it 'initializes with an x coordinate' do
    expect(rover.x).to equal 1
  end

  it 'initializes with a y coordinate' do
    expect(rover.y).to equal 2
  end

  it 'initializes with a heading' do
    expect(rover.heading).to equal(:N)
  end
end
