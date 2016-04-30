require 'direction'

describe Direction do
  subject(:north) { described_class.new(:N) }
  subject(:south) { described_class.new(:S) }

  it 'initializes with a direction' do
    expect(north.current_direction).to eq(:N)
  end

  describe '#left' do
    it 'when North, creates a new direction to the left(west)' do
      expect(north.left).to eq(:W)
    end

    it 'when South, creates a new direction to the left(east)' do
      expect(south.left).to eq(:E)
    end
  end

  describe '#right' do
    it 'when North, creates a new direction to the right(east)' do
      expect(north.right).to eq(:E)
    end

    it 'when South, creates a new direction to the right(west)' do
      expect(south.right).to eq(:W)
    end
  end
end
