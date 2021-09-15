require_relative './player'

class Game
  attr_accessor :players, :winner, :turn

  def initialize
    @players = []
    @winner = nil
  end

  def game_start

    puts "Player 1: (enter a name)"
    p1_name = gets.chomp
    puts "Player 2: (enter a name)"
    p2_name = gets.chomp

    p1 = Player.new(p1_name)
    p2 = Player.new(p2_name)
    @players = [p1, p2]
    @currentPlayer = players[0]
    @turn = 1

    puts "----------MATH QUIZ GAME----------"
    puts "         #{players[0].name} VS #{players[1].name}"
    puts "----------------------------------"
    puts
  end

  def question
    num1 = rand(1...100)
    num2 = rand(1...100)
    @sum = num1 + num2
    puts "-------Turn ##{@turn}: #{@currentPlayer.name}-------"
    puts "What is the sum of #{num1} + #{num2} equal to?"
  end

  def answer
    ans = gets.chomp.to_i
    puts
    if ans == @sum
      puts "CORRECT ANSWER! #{@currentPlayer.name}, you answered #{ans}."
    else
      puts "WRONG ANSWER! #{@currentPlayer.name} LOSES 1 LIFE!"
      @currentPlayer.life -= 1
    end
    puts
  end

  def game_over?
    if @players[0].life == 0
      @winner = @players[1].name
      return true
    end
    if @players[1].life == 0
      @winner = @players[0].name
      return true
    end
  end

  def next_turn
    @turn += 1
    @players.rotate!
    @currentPlayer = @players[0]
  end

  def display_score
    puts "----------CURRENT SCORE----------"
    puts "#{@players[0].name} Life: #{@players[0].life}/3"
    puts "#{@players[1].name} Life: #{@players[1].life}/3"
    puts "---------------------------------"
  end

  def play
    until(game_over?) do
      question
      answer
      display_score
      next_turn
    end 

    puts "--------------------"
    puts "  Winner: #{@winner}!"
    puts "--------------------"

  end
  
end