require './player.rb'
require './turn.rb'

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @in_session = true
    @last_player = nil
    start
  end
  
  def scoreboard
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def final_report
    winner = @player_1.lives > @player_2.lives ? @player_1 : @player_2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end

  def new_turn
    player_in_next_turn = @last_player == @player_1 ? @player_2 : @player_1
    @last_player = player_in_next_turn
    Turn.new(player_in_next_turn)
    scoreboard
    if no_winner_yet 
      puts "----- NEW TURN -----"
    end
  end

  def no_winner_yet
    @player_1.lives > 0 && @player_2.lives > 0
  end

  def start
    while no_winner_yet do
      new_turn
    end
    final_report
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end

p1 = Player.new(1)
p2 = Player.new(2)

Game.new(p1, p2)