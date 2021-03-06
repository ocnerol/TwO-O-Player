class Turn

  def initialize(player)
    @number_0 = rand(1..20)
    @number_1 = rand(1..20)
    @solution = @number_0 + @number_1
    @player = player
    pose_question
  end

  def pose_question
    puts "#{@player.name}: What does #{@number_0} plus #{@number_1} equal?"
    print "> "
    player_answer = gets.chomp.to_i
    if correct?(player_answer)
      puts "#{@player.name}: YES! You are correct."
    else
      puts "#{@player.name}: Seriously? No!"
      @player.lose_point
    end
  end

  def correct?(answer)
    answer == @solution
  end

end
