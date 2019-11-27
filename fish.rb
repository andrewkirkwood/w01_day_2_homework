class Fish

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def fish_count
    @fish_count.length
  end
end
