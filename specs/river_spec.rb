require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test
  def setup()
    @fish = Fish.new("Salmon")
    @fish2 = Fish.new("Haddoch")
    @fish3 = Fish.new("Cod")
    fish_stock = [@fish, @fish2, @fish3]
    @river = River.new("Amazon", fish_stock)
  end

  def test_get_name()
    assert_equal("Amazon" ,@river.name)
  end

  def test_fish_stock()
    assert_equal([@fish, @fish2, @fish3], @river.fish_stock)
  end

  def test_remove_fish()
    @river.remove_fish(@fish)
    assert_equal([@fish2, @fish3], @river.fish_stock)
  end

  def test_fish_count()
    @river.remove_fish(@fish)
    assert_equal(2, @river.fish_count)
  end

end
