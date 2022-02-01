require './game'
require './player'
require './turn'

player_1 = Player.new(1)
player_2 = Player.new(2)

Game.new(player_1, player_2)