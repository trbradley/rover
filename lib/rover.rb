require_relative 'coordinates'
require_relative 'direction'
require_relative 'plateau'

class Rover
  attr_reader :plateau

  def initialize(x, y, direction, coordinates_klass = Coordinates, direction_klass = Direction)
    @current_coordinates = coordinates_klass.new(x, y)
    @current_heading = direction_klass.new(direction)
    @plateau = nil
  end

  def deploy(plateau)
    @plateau = plateau
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

  def move
    raise 'Plateau boundary reached' unless @plateau.within_boundary?(@current_coordinates.new_coordinates(x_move, y_move))

    @current_coordinates = @current_coordinates.new_coordinates(x_move, y_move)
  end


  private

  def x_move
    x = @current_heading.coord_shift.first
  end

  def y_move
    y = @current_heading.coord_shift.last
  end
end
