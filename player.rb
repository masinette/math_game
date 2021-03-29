# Player - personal score/lives remaining accumulator (storing score data),
#   name of player,
#   set lives (3),
#   reduce_lives -1


class Player

  attr_accessor :name, :lives

    def initialize(name)
      @name = name
      @lives = 3
    end

    def reduce_lives
      lives - 1
    end

end



# We can now instantiate invoices using its initializer (constructor):
player1 = Player.new("Peter")
puts player1.lives
