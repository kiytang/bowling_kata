class Game

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame = 0
    first_in_frame = 0  
    
    while frame < 10
      if is_strike?(first_in_frame) 
        score += 10 + next_two_balls_for_strike(first_in_frame)
        first_in_frame +=1 
      elsif is_spare?(first_in_frame)
        score += 10 + next_ball_for_spare(first_in_frame)
        first_in_frame += 2 
      else
        score += two_balls_in_frame(first_in_frame)
        first_in_frame += 2
      end
      frame += 1
    end  
    score
  end

  private
  
  def is_spare?(first_in_frame)
    two_balls_in_frame(first_in_frame) == 10
  end

  def is_strike?(first_in_frame)
    @rolls[first_in_frame] == 10
  end

  def next_two_balls_for_strike(first_in_frame)
    @rolls[first_in_frame+1] + @rolls[first_in_frame+2]
  end

  def next_ball_for_spare(first_in_frame)
    @rolls[first_in_frame+2] 
  end

  def two_balls_in_frame(first_in_frame)
    @rolls[first_in_frame] + @rolls[first_in_frame+1]
  end
end