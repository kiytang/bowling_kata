#game has role and score method 
class Game

  def initialize
    @score = 0
  end

  def roll(pins)
    @score = score + pins  
  end

  # Know that our test below works as we have tested two cases:
  # initially I placed return -1, this caused the test to 
  # fail, then inputting return 0, passes test.
  def score
    return @score
  end
end



# #add up all the pins in roll
# inside of pins we can initilaize score = 0
# inside of roll then : score = score + pins
# inside of score return score

# here I will use initialize method within the game class 
# and set it to 0 