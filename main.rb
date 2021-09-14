require './player'
require './game'

puts "Player 1: (enter a name)"
p1_name = gets.chomp
puts "Player 2: (enter a name)"
p2_name = gets.chomp

p1 = Player.new(p1_name)
p2 = Player.new(p2_name)

puts p1.name
puts p2.name