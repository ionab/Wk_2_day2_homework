require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class BearTest < MiniTest::Test
  def setup()
    stomach = []
    @bear = Bear.new("Yogi", stomach)
    @fish = Fish.new("Salmon")
  end
  def test_get_name()
    assert_equal("Yogi", @bear.name)
  end
  def test_if_bear_has_empty_stomach()
    assert_equal([], @bear.stomach)
  end
  def test_if_bear_eats_fish()
    assert_equal(["Salmon"], @bear.bear_eats_fish("Salmon"))
  end
end
