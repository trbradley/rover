class Coordinates
  attr_reader :x, :y

  def initialize(x, y)
    @x = x.to_i
    @y = y.to_i
  end

  def new_coordinates(change_x, change_y)
    Coordinates.new(@x + change_x, @y + change_y)
  end
end
