require 'test_helper'
require_relative '../lib/vector2'

class Vector2Test < MiniTest::Unit::TestCase

  def test_distance_should_return_correct_distance_between_2_vector2s
    a = Vector2[2, 2]
    b = Vector2[3, 2]
    assert_equal 1, a.distance(b)
  end

  def test_pathlength_returns_total_distances_between_points_in_array
    a = Vector2[2, 2]
    b = Vector2[3, 2]
    c = Vector2[3, 5]
    d = Vector2[5, 5]
    assert_equal 6, Vector2.pathlength(a,b,c,d)
  end

  def test_adding_integer_to_vector2_adds_it_to_both_the_x_and_y_elements
    a = Vector2[2, 2]
    a += 3
    assert_equal Vector2[5, 5], a
  end

  def test_shovel_adds_element_to_vector2
    a = Vector2[2, 2]
    a << 3
    assert_equal Vector2[2, 2, 3], a
  end

  def test_angle_class_method_returns_angle_between_two_vector2s_in_radians
    a = Vector2[5, 0]
    b = Vector2[0, 2]
    assert_equal Math::PI/2, Vector2.angle(a,b)
    assert_equal -Math::PI/2, Vector2.angle(b,a)

    c = Vector2[3,3]
    assert_equal -Math::PI/4, Vector2.angle(c,a)
  end

  def test_angle_instance_method_returns_angle_between_two_vector2s_in_radians
    a = Vector2[5, 0]
    b = Vector2[0, 2]
    assert_equal Math::PI/2, a.angle(b)
    assert_equal -Math::PI/2, b.angle(a)

    c = Vector2[3,3]
    assert_equal -Math::PI/4, c.angle(a)
  end

end
