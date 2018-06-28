require "rspec"
require "hand"

describe Hand do 
  subject(:hand) {Hand.new}

  
  describe "#initialize" do 
    
    it "should start with an empty cards array" do
      expect(hand.cards).to be_empty  
    end

  end 
  
  describe "#add_card" do 
    let(:card) {double('card')}
    it "should add an instance of card" do 
      hand.add_card(card)
      expect(hand.cards.first).to eq(card)
    end
    
    it "should not add a sixth card" do
      5.times {hand.add_card(card)}
      expect{hand.add_card(card)}.to raise_error("Cannot add a sixth card!")
    end 
  end

  describe "#hand_value" do 
    
    let(:high_card) {Hand.new}

    it "returns the high-card rank with the correct high card" do 
      high_card.add_card(Card.new(:♠️, 2))
      high_card.add_card(Card.new(:♥️, 11))
      high_card.add_card(Card.new(:♦️, 5))
      high_card.add_card(Card.new(:♥️, 3))
      high_card.add_card(Card.new(:♠️, 10)) 
      expect(high_card.hand_value).to eq([9, 11])
  #   end
    end
  end 
  
end 