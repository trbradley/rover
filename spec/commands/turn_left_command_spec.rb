require 'commands/turn_left_command'

describe TurnLeftCommand do
  subject(:turn_left_command) { described_class.new }
  let(:rover) { double :rover }

  describe '#execute' do
    it 'tells the rover to turn left' do
      expect(rover).to receive(:turn_left)
      turn_left_command.execute(rover)
    end
  end
end
