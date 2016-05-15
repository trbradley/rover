require 'models/rover'

describe Rover do
  subject(:rover) { described_class.new(2, 2, :N, coordinates_klass, direction_klass) }
  let(:coordinates_klass) { double :Coordinates }
  let(:direction_klass) { double :Direction }
  let(:current_coordinates) { double :coordinates }
  let(:current_heading) { double :direction }
  let(:plateau) { double :plateau }

  before do
    allow(coordinates_klass).to receive(:new).with(2, 2) { current_coordinates }
    allow(direction_klass).to receive(:new).with(:N) { current_heading }
    allow(current_coordinates).to receive(:x).and_return(2)
    allow(current_coordinates).to receive(:y).and_return(2)
    allow(current_heading).to receive(:current_direction).and_return(:N)
    rover.deploy(plateau)
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

  describe '#move' do
    it 'sets new coordinates with the correct arguments' do
      allow(plateau).to receive(:within_boundary?).and_return(true)
      allow(current_heading).to receive(:coord_shift).and_return([0, 1])

      expect(current_coordinates).to receive(:new_coordinates).with(0, 1).twice
      rover.move
    end

    # it 'raises an error if movement would pass boundary of plateau' do
    #   allow(plateau).to receive(:within_boundary?).and_return(false)
    #
    #   out_of_bounds = 'Plateau boundary reached'
    #   rover = described_class.new(5, 5, :N)
    #   rover.deploy(plateau)
    #   expect { rover.move }.to raise_error out_of_bounds
    # end

    # it 'prints an message if moving would put it out of bounds' do
    #   allow(plateau).to receive(:within_boundary?).and_return(false)
    #
    #   out_of_bounds = 'Plateau boundary reached'
    #   rover = described_class.new(5, 5, :N)
    #   rover.deploy(plateau)
    #   expect { rover.move }.to output(out_of_bounds).to_stdout
    # end

    it 'does not move if moving would put it out of bounds' do
      allow(plateau).to receive(:within_boundary?).and_return(false)

      rover = described_class.new(5, 5, :N)
      rover.deploy(plateau)
      rover.move
      expect(rover.current_location).to eq('5, 5, N')
    end
  end

  describe '#deploy' do
    it 'assigns the rover to a plateau' do
      rover.deploy(plateau)
      expect(rover.plateau).to eq(plateau)
    end
  end
end
