require 'commands/move_command'

describe MoveCommand do
  subject(:move_command) { described_class.new }
  let(:rover) { double :rover }

  describe '#execute' do
    it 'tells the rover to move' do
      expect(rover).to receive(:move)
      move_command.execute(rover)
    end
  end
end
