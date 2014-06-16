require_relative "../lib/game"

#write a failing unit test
#initialize a new object of Bike class 
describe Game do
  it "can create a new game" do
    game = Game.new
  end
end

#write a role method
describe "roll" do
  "it can roll"
  game = Game.new
  game.roll(pins)
end