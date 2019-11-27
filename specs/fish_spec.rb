require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../bear')


class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Carp")
  end

  def test_can_return_fish_name
    assert_equal("Carp", @fish.name)
  end

  def test_can_return_fish_count
    assert_equal(0, @fish.fish_count)
  end
end
