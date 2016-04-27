class Plateau
  attr_reader :plateau_map

  def initialize(width, height)
    @plateau_map = Array.new(width) { Array.new(height) }
  end
end
