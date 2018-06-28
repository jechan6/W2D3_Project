require 'card'

class Deck 
  

  
  attr_reader :cards
  
  
  def initialize 
    @cards = [] 
    populate 
  end
  def get_suits 
    SUITS
  end
  def populate
    SUITS.each do |suit| 
      (2..14).each do |value| 
        @cards << Card.new(suit, value)
      end 
    end 
  end 
  
  def shuffle 
    @cards.shuffle!
  end
  
  def draw
    raise "No more cards!" if @cards.empty?
    @cards.pop
  end 
  
  private 
  SUITS = [:♠️,:♥️,:♣️,:♦️].freeze
end