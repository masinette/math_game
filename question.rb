# Question 
#   puts questions and checks answers, 
#   random1 = rand(kcmdkmckd)
#   random2 = rand(ksdmkleme)
#   answer = random1 + random2
#   `What does #{random1} plus #{random2} equal?`, 
#   -take user input
#   -if userinput = answer then true, else false
#   returns boolean

class Question
  random_num_one = rand(1...20)
  random_num_two = rand(1...20)
  answer = random_num_two + random_num_two
  
  puts `What does #{random_num_one} plus #{random_num_two} equal?`  
  player_answer = gets.chomp
  
  puts answer
  puts player_answer
end  