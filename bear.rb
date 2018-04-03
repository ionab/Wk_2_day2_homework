class Bear

  attr_reader :name, :stomach

  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end

  def bear_eats_fish(river, fish)
    @stomach.push(fish)
    river.remove_fish(fish)
  end

  def bear_roar()
    return "ROAR!"
  end

  def food_count
    @stomach.count()
  end

end
