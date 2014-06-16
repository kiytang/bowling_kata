require_relative "../lib/game"

#write a failing unit test
#initialize a new object of Game class 
describe Game do

  #initilaize in setup method, which creates game
  let(:game) {Game.new}

  it "can create a new game" do
    expect(game).to be_true
  end


  #write a role method
  # forgot to place a do after it
  context "#roll" do
    it "can roll" do
      game.roll(0)
    end
  end

  #for score method as it is based on the total of the 
  # 10 frames, we will use the most degenerative complete game 
  # we can roll is a gutter game (20 balls in a gutter game)

  it "returns 0 for a complete gutter game" do
    20.times do
      game.roll(0)
    end
    expect(game.score).to eq 0
  end
end

