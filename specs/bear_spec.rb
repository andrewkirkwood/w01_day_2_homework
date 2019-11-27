require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Goliath", "Brown-Bear")
  end

  def test_can_get_bear_name
    assert_equal("Goliath", @bear.name)
  end

  def test_count_bear_stomach
    assert_equal(0, @bear.count_bear_stomach)
  end

  def test_bear_can_take_fish_from_river
    @bear.bear_takes_a_fish
    assert_equal(1, @bear.count_bear_stomach)
  end

end
