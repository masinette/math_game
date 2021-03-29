Player - personal score/lives remaining accumulator (storing score data),
  name of player,
  set lives (3),
  reduce_lives -1


Question 
  puts questions and checks answers, 
  random1 = rand(kcmdkmckd)
  random2 = rand(ksdmkleme)
  answer = random1 + random2
  `What does #{random1} plus #{random2} equal?`, 
  -take user input
  -if userinput = answer then true, else false
  returns boolean

 
MathGame - take in current_player(initialize with first player), 
  questions
  contains game loop
    -Question.ask, answer, 
    -check answer, if correct do nothing, if incorrect call reduce_lives in current_player, check if player is alive
      -if player is not alive, game is over
    -change player, if current_player = 1 than change to player2
    
# seperate i/o operations, printing, getting user input in a seperate class
# 
#
#
#
#
#

