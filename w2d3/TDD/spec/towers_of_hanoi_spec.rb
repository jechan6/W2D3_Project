require 'rspec'
require 'towers_of_hanoi'

describe Towers do 
  subject(:tower)  {Towers.new}
  
  describe "#move" do 
    it "raises an error if move is not valid" do 
      tower.move(0, 1)
      expect {tower.move(0, 1)}.to raise_error(ArgumentError)
    end 
    
    it "makes the correct move" do 
      tower.move(0,1)
      expect(tower.towers[1][0]).to eq (1)
    end 
    
    it "raises an error if start and end move are the same" do 
      expect{tower.move(0,0)}.to raise_error(ArgumentError)
    end 
    
    it "can handle more than one move" do 
      tower.move(0,1)
      tower.move(0,2)
      expect(tower.towers).to eq([[3],[1],[2]])
    end 
  end 
  
  
  
  
  describe "#won?" do 
    it "does not return initial state as a win" do 
      expect(tower.won?).to be false 
    end 
    
    it "returns true when game is won" do 
      tower.move(0,1)
      tower.move(0,2)
      tower.move(1,2)
      tower.move(0,1)
      tower.move(2,0)
      tower.move(2,1)
      tower.move(0,1)
      expect(tower.won?).to be true
    end 
  
    it "returns false when game is not over" do 
      tower.move(0,1)
      expect(tower.won?).to be false
    end 
  end
end



