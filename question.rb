
class Question
  # attr_accessor :player_answer
  
  def initialize 
    @random_num_one = rand(1...20)
    @random_num_two = rand(1...20)
    @answer = @random_num_two + @random_num_one
  end
    
  def ask
    puts "What does #{@random_num_one} plus #{@random_num_two} equal?"  
    # puts "What does  plus equal?"  
    # print "> "

    @player_answer = gets.chomp
    
    if @answer.to_i == @player_answer.to_i
      puts "YES! You are correct."
      return true.to_s
    else
      puts "Seriously? No!" 
      return false.to_s
    end
  end  
end 

# question1 = Question.new()
# question1.ask


# Question 
#   puts questions and checks answers, 
#   random1 = rand(kcmdkmckd)
#   random2 = rand(ksdmkleme)
#   answer = random1 + random2
#   `What does #{random1} plus #{random2} equal?`, 
#   -take user input
#   -if userinput = answer then true, else false
#   returns boolean