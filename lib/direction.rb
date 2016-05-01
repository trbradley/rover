class Direction
  DIRECTIONS = {
                :N => [:W, :E],
                :W => [:S, :N],
                :S => [:E, :W],
                :E => [:N, :S]
               }.freeze

  attr_reader :current_direction

  def initialize(direction)
    @current_direction = direction.to_sym
  end

  def left
    Direction.new(DIRECTIONS[current_direction][0]).current_direction
  end

  def right
    Direction.new(DIRECTIONS[current_direction][1]).current_direction
  end
end
