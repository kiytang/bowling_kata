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
end

