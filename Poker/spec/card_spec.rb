require "rspec"
require "card"



describe Card do 
  
  subject(:card) {Card.new(:♠️,1)}
  
  describe "#initialize" do 
    
    it "sets the card suit" do 
      expect(card.suit).to eq(:♠️)
    end 
    
    it "sets the card value" do 
      expect(card.value).to eq(1)
    end 
    
  end 
  
end 


