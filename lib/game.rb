#game has role and score method 
class Game

  def initialize
    @rolls = []  #hold our rolls
  end

  def roll(pins)
    @rolls << pins
  end

  # Know that our test below works as we have tested two cases:
  # initially first_in_frame placed return -1, this caused the test to 
  # fail, then inputting return 0, passes test.
  def score
    score = 0
    frame = 0
    first_in_frame = 0  #index of the first ball in the frame
    while frame < 10 # loop through frame 1 at a time
      if is_strike?(first_in_frame) 
        score += 10 + next_two_balls_for_strike(first_in_frame)
        first_in_frame +=1 #only x1 ball in stike frame
      elsif is_spare?(first_in_frame)
        score += 10 + next_ball_for_spare(first_in_frame)
        first_in_frame += 2 #x2 balls in this frame thus increment first_in_frame by 2:walking through the array x2 balls at a time
      else
        score += two_balls_in_frame(first_in_frame)
        first_in_frame += 2
      end
      frame += 1
    end  
    score
  end

  def is_spare?(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame+1] == 10
  end

  def is_strike?(first_in_frame)
    @rolls[first_in_frame] == 10
  end

  def next_two_balls_for_strike(first_in_frame)
    @rolls[first_in_frame+1] + @rolls[first_in_frame+2]
  end

  def next_ball_for_spare(first_in_frame)
    @rolls[first_in_frame+2] #score for spare is 10 + the next ball you roll
  end

  def two_balls_in_frame(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame+1]
  end
end



# #add up all the pins in roll
# inside of pins we can initilaize score = 0
# inside of roll then : score = score + pins
# inside of score return score

# here first_in_frame will use initialize method within the game class 
# and set it to 0 