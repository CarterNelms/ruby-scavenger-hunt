require "matrix"

class Vector2 < Vector::ZeroVectorError

  def initialize(x, y)
    @x = x
    @y = y
  end

  def pos
    [@x, @y]
  end

  def distance(other_vector2)
    Vector2.distance(self.pos, other_vector2.pos)
  end

  def self.distance(vector2_1, vector2_2)
    x1 = vector2_1.x
    y1 = vector2_1.y
    x2 = vector2_2.x
    y2 = vector2_2.y

    delta_x = x2-x1
    delta_y = y2-y1

    Math.sqrt(delta_x**2 + delta_y**2)
  end
end