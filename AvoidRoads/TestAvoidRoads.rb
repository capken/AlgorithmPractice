require 'test/unit'

class TestAvoidRoads < Test::Unit::TestCase
  def test_with_example
    ar = AvoidRoads.new
    asset_equal 252, ar.num_ways(6, 6, ["0 0 0 1", "6 6 5 6"])
    asset_equal 2, ar.num_ways(1, 1, [])
    asset_equal 6406484391866534976, ar.num_ways(35, 31, [])
    asset_equal 0, ar.num_ways(2, 2, ["0 0 1 0", "1 2 2 2", "1 1 2 1"])
  end
end