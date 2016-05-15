require_relative 'command'

class MoveCommand < Command
  def execute(rover)
    rover.move
  end
end
