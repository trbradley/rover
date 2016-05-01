class Direction
  TURN_DIRECTIONS = {
                      :N => [:W, :E],
                      :W => [:S, :N],
                      :S => [:E, :W],
                      :E => [:N, :S]
                     }.freeze
  AXIS_DIRECTION = {
                    :N => [0, 1],
                    :W => [-1, 0],
                    :S => [0, -1],
                    :E => [1, 0]
                  }.freeze

  attr_reader :current_direction

  def initialize(direction)
    @current_direction = direction.to_sym
  end

  def left
    Direction.new(TURN_DIRECTIONS[current_direction][0])
  end

  def right
    Direction.new(TURN_DIRECTIONS[current_direction][1])
  end

  def coord_shift
    AXIS_DIRECTION[current_direction]
  end
end
