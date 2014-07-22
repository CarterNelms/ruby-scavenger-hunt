require_relative "../lib/vector2"

RSpec.describe "Vector2" do
  context ".distance" do
    it "should return the correct distance between two 2-dimensional vectors (vector2)" do
      a = Vector2.new(2, 2)
      b = Vector2.new(3, 2)
      a.distance(b).should == 1
    end
  end
end