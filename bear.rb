class Bear

  attr_reader :name, :stomach

  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end
  def bear_eats_fish(river)
    @stomach << @river.fish_stock(river)

  end
end
