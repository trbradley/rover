require 'plateau'

describe Plateau do
  width = 5
  height = 10
  let(:plateau) { described_class.new(width, height) }

  it 'should create a grid with the correct width' do
    expect(plateau.plateau_map.length).to equal(width)
  end

  it 'should create a grid with the correct height' do
    expect(plateau.plateau_map[0].length).to equal(height)
  end
end
