require_relative "../lib/game"

describe Game do

  let(:game) {Game.new}

  def roll_many(n, pins)
    n.times do
      game.roll(pins)
    end
  end

  def roll_spare
    game.roll(5)
    game.roll(5) 
  end

  def roll_strike
    game.roll(10)
  end

  context "#roll" do
    it "can roll" do
      game.roll(0)
    end
  end

  it "returns 0 for a complete gutter game" do
    roll_many(20,0)
    expect(game.score).to eq 0
  end

  it "returns 20 for a complete game where 1 is recorded for every turn" do
    roll_many(20, 1)
    expect(game.score).to eq 20
  end

  it "records for spares" do
    roll_spare
    game.roll(3)  
    roll_many(17,0)
    expect(game.score).to eq 16
  end

  it "records for stikes" do
    roll_strike
    game.roll(3)
    game.roll(4)
    roll_many(16,0)
    expect(game.score).to eq 24
  end

  it "rolls a perfect game" do  
    roll_many(12, 10)
    expect(game.score).to eq 300
  end
end