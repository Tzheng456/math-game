require './player'
require './game'

puts "Player 1: (enter a name)"
p1_name = gets.chomp
puts "Player 2: (enter a name)"
p2_name = gets.chomp

p1 = Player.new(p1_name)
p2 = Player.new(p2_name)

match = Game.new

match.gameStart(p1, p2)

match.question
match.answer