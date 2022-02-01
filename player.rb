class Player

  attr_reader :lives
  
  def initialize
    @lives = 3
  end

  def lose_point
    @lives -= 1
  end

end

example_player_0 = Player.new

p example_player_0.lives

example_player_0.lose_point

p example_player_0.lives

example_player_0.lose_point

p example_player_0.lives

example_player_0.lose_point

p example_player_0.lives