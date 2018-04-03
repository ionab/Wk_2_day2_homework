require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test
  def setup()
    fish_stock = ["Salmon", "Haddock", "Cod"]
    @river = River.new("Amazon", fish_stock)
  end
  def test_get_name()
    assert_equal("Amazon" ,@river.name)
  end
  def test_fish_stock()
    assert_equal(["Salmon", "Haddock", "Cod"], @river.fish_stock)
  end
end
