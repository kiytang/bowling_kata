require_relative "../lib/game"

#write a failing unit test
#initialize a new object of Game class 
describe Game do

  #initilaize in setup method, which creates game
  let(:game) {Game.new}

  #Refactor phase
# extract a function that contains the block, call 
# it the function roll_many.
# take 20 and turn it to a var called n and take 0 and 
# turn it into  a var called pins
# then take the var out of block, (perametric)
# and extract the method rollmany it will take n and pin as
# arguments
  def roll_many(n, pins)
    n.times do
      game.roll(pins)
    end
  end

  it "can create a new game" do
    # expect(game).to be_true
  end


  #write a role method
  # forgot to place a do after it
  context "#roll" do
    it "can roll" do
      game.roll(0)
    end
  end

  # for score method as it is based on the total of the 
  # 10 frames, we will use the most degenerative complete game 
  # we can roll is a gutter game (20 balls in a gutter game)

  it "returns 0 for a complete gutter game" do
    roll_many(20,0)
    expect(game.score).to eq 0
  end

  # next most trivial game is based on a score of all ones
  # thus returning a total score of 20
  it "returns 20 for a complete game where 1 is recorded for every turn" do
    roll_many(20, 1)
    expect(game.score).to eq 20
  end
end

