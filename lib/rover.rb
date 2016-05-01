require_relative 'coordinates'
require_relative 'direction'

class Rover
  def initialize(x, y, direction, coordinates_klass = Coordinates, direction_klass = Direction)
    @current_coordinates = coordinates_klass.new(x, y)
    @current_heading = direction_klass.new(direction)
  end

  def current_location
    "#{@current_coordinates.x}, #{@current_coordinates.y}, #{@current_heading.current_direction}"
  end

  def turn_left
    @current_heading = @current_heading.left
  end

  def turn_right
    @current_heading = @current_heading.right
  end
end
