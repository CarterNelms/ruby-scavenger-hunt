require 'test_helper'
require_relative '../lib/integer_open'

class IntegerOpenTest < MiniTest::Unit::TestCase

  def test_factors
    assert_equal [2,3], 6.factors
    assert_equal [2,3], 12.factors
    assert_equal [2,5], -20.factors
    assert_equal [3,41], 123.factors
    assert_equal [2,3,5], 360.factors
    assert_equal [2,5], -1000.factors
    assert_equal [7], 7.factors
    assert_equal [], 0.factors
    assert_equal [], 1.factors
  end

end
