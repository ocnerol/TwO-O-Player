class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @in_session? = true
  end
  
  def scoreboard
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def final_report
    winner = @player_1.lives > @player_2.lives ? @player_1 : @player_2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end

end