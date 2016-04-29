require 'coordinates'

describe Coordinates do
  subject(:coordinates) { described_class.new(5, 5) }

  it 'has an x coordinate' do
    expect(coordinates.x).to eq(5)
  end

  it 'has a y coordinate' do
    expect(coordinates.x).to eq(5)
  end

  it 'can change x coordinate' do
    new_coordinates = coordinates.new_coordinates(1, 0)
    expect(new_coordinates.x).to eq(6)
  end

  it 'can change y coordinate' do
    new_coordinates = coordinates.new_coordinates(0, 1)
    expect(new_coordinates.y).to eq(6)
  end
end
