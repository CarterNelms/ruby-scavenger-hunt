require "matrix"

class Vector2 < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2 + (self[1]-v[1])**2)
  end

  def angle(v)
    Vector2.angle(self, v)
  end

  def +(num)
    raise TypeError unless num.class == Float || num.class == Fixnum
    (0..1).each{|i|
      self[i] = self[i] + num
    }
    self
  end

  def <<(num)
    raise TypeError unless num.class == Float || num.class == Fixnum
    self[self.size] = num
  end

  def self.angle(v1,v2)
    a1 = Math.atan2(v1[1], v1[0])
    a2 = Math.atan2(v2[1], v2[0])
    a2-a1
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
