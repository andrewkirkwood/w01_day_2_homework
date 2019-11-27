class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def count_bear_stomach
    @stomach.length
  end

  def bear_takes_a_fish
    @stomach.push(1)
  end

end
