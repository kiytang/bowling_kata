#game has role and score method 
class Game

  def initialize
    @rolls = []  #hold our rolls
  end

  def roll(pins)
    @rolls << pins
  end

  # Know that our test below works as we have tested two cases:
  # initially I placed return -1, this caused the test to 
  # fail, then inputting return 0, passes test.
  def score
    score = 0
    frame = 0
    i = 0
    while frame < 10 # loop through frame 1 at a time
      if @rolls[i] + @rolls[i+1] == 10 #spare
        score += 10 + @rolls[i+2] #
        i += 2
      else
        score += @rolls[i] + @rolls[i+1]
        i += 2
      end
      frame += 1
    end  
    score
  end


end



# #add up all the pins in roll
# inside of pins we can initilaize score = 0
# inside of roll then : score = score + pins
# inside of score return score

# here I will use initialize method within the game class 
# and set it to 0 