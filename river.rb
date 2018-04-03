class River

  attr_reader :name, :fish_stock

  def initialize(name, fish_stock)
    @name = name
    @fish_stock = fish_stock
  end

  def remove_fish(fish)
    @fish_stock.delete(fish)
  end

  def fish_count()
    @fish_stock.count
  end

end
