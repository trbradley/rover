require 'commands/turn_right_command'

describe TurnRightCommand do
  subject(:turn_right_command) { described_class.new }
  let(:rover) { double :rover }

  describe '#execute' do
    it 'tells the rover to turn right' do
      expect(rover).to receive(:turn_right)
      turn_right_command.execute(rover)
    end
  end
end
