class River

  attr_reader :name, :fish_count
  def initialize(name, fish_count)

    @name = name
    @fish_count = fish_count
  end

  def loose_a_fish
    @fish_count -= 1
  end
end
