class Game
  attr_accessor :player1, :player2, :winner

  def initialize
    @player1 = nil
    @player2 = nil
    @winner = nil
  end

  def gameStart(p1, p2)
    @player1 = p1
    @player2 = p2
    @currentPlayer = player1
    puts "----------MATH QUIZ GAME----------"
    puts "#{player1.name} VS #{player2.name}"
    puts "----------------------------------"
  end
  
end