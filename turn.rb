require './player'

class Turn
  attr_reader :player
  def initialize(player)
    @number_0 = rand(1..20)
    @number_1 = rand(1..20)
    @solution = @number_0 + @number_1
    @player = player
  end

  def pose_question
    puts "#{player.name}: What does #{@number_0} plus #{@number_1} equal?"
    print "> "
    player_answer = gets.chomp.to_i
    if (correct?(player_answer))
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_point
    end
  end

  def correct?(answer)
    answer == @solution
  end

end

example_player_1 = Player.new(1)

example_turn_0 = Turn.new(example_player_1)

# p example_turn_0

example_turn_0.pose_question
p example_turn_0