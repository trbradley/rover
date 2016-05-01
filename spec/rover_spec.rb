require 'rover'

describe Rover do
  subject(:rover) { described_class.new(2, 2, :N, coordinates_klass, direction_klass) }
  let(:coordinates_klass) { double :Coordinates }
  let(:direction_klass) { double :Direction }
  let(:start_coordinates) { double :coordinates }
  let(:current_heading) { double :direction }
  before do
    allow(coordinates_klass).to receive(:new).with(2, 2) { start_coordinates }
    allow(direction_klass).to receive(:new).with(:N) { current_heading }
    allow(start_coordinates).to receive(:x).and_return(2)
    allow(start_coordinates).to receive(:y).and_return(2)
    allow(current_heading).to receive(:current_direction).and_return(:N)
  end

  it 'has a current location' do
    expect(rover.current_location).to eq('2, 2, N')
  end

  describe '#turn_left' do
    it 'calls left on the current direction' do
      expect(current_heading).to receive(:left)
      rover.turn_left
    end
  end

  describe '#turn_right' do
    it 'calls right on the current direction' do
      expect(current_heading).to receive(:right)
      rover.turn_right
    end
  end
end
