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
    @fish2 = Fish.new("Cod")
    @river = River.new("Amazon", [@fish, @fish2])
  end
  def test_get_name()
    assert_equal("Yogi", @bear.name)
  end
  def test_bear_has_empty_stomach()
    assert_equal([], @bear.stomach)
  end

  def test_bear_eats_fish()
    @bear.bear_eats_fish(@river, @fish)
    assert_equal([@fish], @bear.stomach)
  end

  def test_remove_fish_from_river()
    @river.remove_fish(@fish)
    assert_equal([@fish2], @river.fish_stock())
  end

  def test_bear_roar()
    assert_equal("ROAR!", @bear.bear_roar())
  end

  def test_food_count()
    @bear.bear_eats_fish(@river, @fish)
    assert_equal(1, @bear.food_count)
  end

end
