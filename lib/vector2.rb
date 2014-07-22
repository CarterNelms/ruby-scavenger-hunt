require "matrix"

class Vector2 < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2 + (self[1]-v[1])**2)
  end

  # def +(num)
  #   if(num.class == Float || num.class == Fixnum)
  #     (0..1).each{|i|
  #       self[i] += num
  #     }
  #   else
  #     puts num.class
  #     raise TypeError
  #   end
  # end

  def self.pathlength(*points)
    length = 0
    points.reduce{|prev_p, next_p|
      length += prev_p.distance(next_p) if prev_p && next_p
      next_p
    }
    length
  end
end
