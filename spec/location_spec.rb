require 'plateau'

describe Plateau do
  let(:plateau) { described_class }

  it 'should create a grid with the correct width' do
    width = rand(1..10)
    height = 1
    new_plateau = plateau.new(width, height)
    expect(new_plateau.plateau_map.length).to equal(width)
  end

  it 'should create a grid with the correct height' do
    width = 1
    height = rand(1..10)
    new_plateau = plateau.new(width, height)
    expect(new_plateau.plateau_map[0].length).to equal(height)
  end
end
