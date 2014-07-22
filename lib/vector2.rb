require "matrix"

class Vector2 < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2 + (self[1]-v[1])**2)
  end

  def self.pathlength(*points)
    length = 0
    points.reduce{|prev_p, next_p|
      length += prev_p.distance(next_p) if prev_p && next_p
      next_p
    }
    length
  end
end
