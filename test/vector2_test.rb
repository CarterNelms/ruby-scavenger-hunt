require 'test_helper'
require_relative '../lib/vector2'

class Vector2Test < MiniTest::Unit::TestCase

  def test_distance_should_return_correct_distance_between_2_vector2s
    a = Vector2[2, 2]
    b = Vector2[3, 2]
    assert_equal 1, a.distance(b)
  end

  def test_adding_integer_to_vector2_adds_it_to_both_the_x_and_y_elements
    a = Vector2[2, 2]
    a = a + 3
    assert_equal Vector2[5, 5], a
  end

end



# require_relative "../lib/vector2"

# RSpec.describe "Vector2" do
#   context ".distance" do
#     it "should return the correct distance between two 2-dimensional vectors (vector2)" do
#       a = Vector2.new(2, 2)
#       b = Vector2.new(3, 2)
#       a.distance(b).should == 1
#     end
#   end
# end