require './player'
require './question'


class Math_Game 
  
  def initialize
    @player1 = Player.new("P1")
    @player2 = Player.new("P2")
    @current_player = @player1
  end
  
  # alive method should check if lives are 0 FIRST, elsif player2.lives is 0 
  # then game over, else continue game: ask another question
  
  def alive (lives)
    if @current_player.lives > 0
      return true
    elsif @current_player.lives == 0
      return false  
    end
  end
  
  def check_answer question
    if question.ask.to_s == "false"
      return false
    else 
      return true
    end 
  end
  
  
  def change_turn
    if @current_player.name == @player1.name
      @current_player = @player2
    else 
      @current_player = @player1
    end    
  end
  
  
  def ask_question
    @question = Question.new()
    return @question
  end  
  
  
  
  def run_game
    print "#{@current_player.name}: "
    ask_question
    
    if (alive(@current_player.lives) and check_answer(@question) == false)
      @current_player.lives -= 1
      if (@current_player.lives == 0)
        change_turn
        puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
        puts "----- GAME OVER -----" 
        return puts "Goodbye!"
      end  
    end  
    puts "#{@player1.name}: #{@player1.lives}/3 vs. #{@player2.name}: #{@player2.lives}/3"
    puts "----- NEW TURN -----"
    change_turn 
    run_game 
  end
  
end


# MathGame - take in current_player(initialize with first player), 
# questions
# contains game loop
# -Question.ask, answer, 
# -check answer, if correct do nothing, if incorrect call reduce_lives in current_player, check if player is alive
#   -if player is not alive, game is over
#   -change player, if current_player = 1 than change to player2
  
  # seperate i/o operations, printing, getting user input in a seperate class
  # 