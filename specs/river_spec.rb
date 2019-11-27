require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bear')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", 10)
    @bear = Bear.new("Goliath", "Brown-Bear")
    @fish = Fish.new("Trout")
  end

  def test_can_return_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_can_loose_a_fish
    assert_equal(9, @river.loose_a_fish)
  end
end
