class Plateau
  def initialize(x_length, y_length, coordinates_klass = Coordinates)
    @plateau_origin = coordinates_klass.new(0, 0)
    @plateau_limits = coordinates_klass.new(x_length, y_length)
  end
end
