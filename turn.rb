class Turn

  def initialize(player)
    @number_0 = rand(1..20)
    @number_1 = rand(1..20)
    @solution = @number_0 + @number_1
    @player = player
  end


end