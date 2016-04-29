require 'plateau'

describe Plateau do
  let(:coordinates_klass) { double :Coordinates }
  let(:plateau_origin) { double :coordinates }
  let(:plateau_limits) { double :coordinates }
  before do
    allow(coordinates_klass).to receive(:new).with(0, 0) { plateau_origin }
    allow(coordinates_klass).to receive(:new).with(5, 5) { plateau_limits }
  end

  subject(:plateau) { described_class.new(5, 5, coordinates_klass) }

  it 'has an origin of 0, 0' do
    expect(plateau.instance_variable_get(:@plateau_origin)).to eq(plateau_origin)
  end

  it 'it\'s upper limits can be defined' do
    expect(plateau.instance_variable_get(:@plateau_limits)).to eq(plateau_limits)
  end
end
