class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood

  # @@fishes = []

  def initialize(name)
    @name = name
    @mood = 'nervous'
    # @@fishes << self
  end
end
