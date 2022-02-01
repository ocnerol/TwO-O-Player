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

# example_player_0 = Player.new(0)

# p example_player_0.lives

# example_player_0.lose_point

# p example_player_0.lives

# example_player_0.lose_point

# p example_player_0.lives

# example_player_0.lose_point

# p example_player_0.lives