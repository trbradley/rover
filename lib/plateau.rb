require_relative 'coordinates'

class Plateau
  def initialize(x_length, y_length, coordinates_klass = Coordinates)
    @plateau_origin = coordinates_klass.new(0, 0)
    @plateau_limits = coordinates_klass.new(x_length, y_length)
  end

  def within_boundary?(coordinates)
    within_x_limits?(coordinates) && within_y_limits?(coordinates)
  end

  private

  def within_x_limits?(coordinates)
    coordinates.x < @plateau_limits.x && coordinates.x > @plateau_origin.x
  end

  def within_y_limits?(coordinates)
    coordinates.y < @plateau_limits.y && coordinates.y > @plateau_origin.y
  end
end
