class Direction
  attr_reader :current_direction

  def initialize(direction)
    @current_direction ||= direction
  end

  def new_direction(direction)
    @current_direction = direction
  end
end
