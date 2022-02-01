class Player

  attr_reader :lives, :name
  
  def initialize(id)
    @lives = 3
    @name = "Player #{id}"
  end

  def lose_point
    @lives -= 1
  end

end
