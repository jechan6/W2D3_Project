require 'rspec'
require 'deck'

describe Deck do 
  
  subject(:deck) {Deck.new}
  
  describe "#initialize" do 
    
    it "has 52 cards" do 
      expect(deck.cards.length).to eq(52)
      expect(deck.cards.first).to be_an_instance_of(Card)
    end 
    
    
    it "has the ace of spades in the correct spot" do 
      expect(deck.cards[12].suit).to eq(:♠️)
      expect(deck.cards[12].value).to eq(14)
    end 
  
  end 
  
  describe "#shuffle" do 
    let(:deck2) {Deck.new}

    it "shuffles the deck" do 
      deck2.shuffle
      expect(deck2.cards).not_to eq(deck.cards)
    end 
    
  end 
  
  describe "#draw" do 
    
    it "raises an error if deck is empty" do 
      52.times {deck.draw}
      expect{deck.draw}.to raise_error("No more cards!")  
      
    end
    
    it "draws a card" do 
      deck.draw
      expect(deck.cards.length).to eq(51)
    end 
  end 
  
  
end 


