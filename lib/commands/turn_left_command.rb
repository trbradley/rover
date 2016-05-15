require_relative 'command'

class TurnLeftCommand < Command
  def execute(rover)
    rover.turn_left
  end
end
