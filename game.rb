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

  def question
    num1 = rand(1...100)
    num2 = rand(1...100)
    @sum = num1 + num2
    puts "Question for #{@currentPlayer.name}!"
    puts "What is the sum of #{num1} + #{num2} equal to?"
  end

  def answer
    ans = gets.chomp.to_i
    if ans == @sum
      puts "CORRECT ANSWER! #{@currentPlayer.name}, you answered #{ans}."
      puts "#{@currentPlayer.name} has #{@currentPlayer.life} life remaining."
    else
      puts "WRONG ANSWER! #{@currentPlayer.name} LOSES 1 LIFE!"
      @currentPlayer.life -= 1
      puts "#{@currentPlayer.name} has #{@currentPlayer.life} life remaining."
    end
  end
  
end