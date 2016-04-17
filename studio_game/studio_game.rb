require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")

knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)
knuckleheads.print_stats

player4 = Player.new("Alvin", 100)
player5 = Player.new("Simon", 60)
player6 = Player.new("Theo", 125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play(3)

# puts player1.inspect
# puts player1
# puts player2
# puts player3
# puts player3.blam
# puts player3
# puts player3.w00t
# puts player3

# puts player2.w00t
# puts player2

# puts player2

# puts player1.health
# player2.name = ("lawrence")
# puts player2.name
# puts player2

# players = [player1, player2, player3]

# puts "There are #{players.size} players in the game:"
# players.each do |player|
#   players.pop 
#   player4 = Player.new("shemp", 90)
#   players << player4
#   player.blam
#   player.w00t
#   player.w00t
#   puts player 
# end

# players.each do |player|
#   puts player.health
# end




