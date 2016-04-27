require_relative 'direction'

class Rover
  attr_reader :x_coordinate, :y_coordinate, :heading

  def initialize(x_coordinate, y_coordinate, heading)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @heading ||= Direction.new(heading)
  end

  def current_location
    "#{@x_coordinate}, #{@y_coordinate}, #{@heading.current_direction}"
  end

  def change_heading(heading)
    @heading.new_direction(heading)
  end
end
