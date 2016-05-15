require 'commands/command'

describe Command do
  subject(:command) { described_class.new }

  it 'has an execute method' do
    expect { command.execute }.not_to raise_error
  end
end
