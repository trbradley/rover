require 'models/direction'

describe Direction do
  subject(:north) { described_class.new(:N) }
  subject(:west) { described_class.new(:W) }
  subject(:south) { described_class.new(:S) }

  it 'initializes with a direction' do
    expect(north.current_direction).to eq(:N)
  end

  describe '#left' do
    it 'when North, creates a new direction' do
      expect(north.left).not_to eq(north)
    end

    it 'when South, creates a new direction' do
      expect(south.left).not_to eq(south)
    end
  end

  describe '#right' do
    it 'when North, creates a new direction' do
      expect(north.right).not_to eq(north)
    end

    it 'when South, creates a new direction' do
      expect(south.right).not_to eq(south)
    end
  end

  describe '#coord_shift' do
    it 'returns an array with correct change to coordinates' do
      expect(north.coord_shift).to eq([0, 1])
    end
  end
end
