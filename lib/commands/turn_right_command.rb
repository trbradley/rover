require_relative 'command'

class TurnRightCommand < Command
  def execute(rover)
    rover.turn_right
  end
end
