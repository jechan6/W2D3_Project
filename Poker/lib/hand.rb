class Hand 
  attr_accessor :cards
  def initialize
    @cards = []
  end 
  
  def add_card(card)
    raise "Cannot add a sixth card!" if @cards.length == 5
    @cards << card
  end
  
  
  # This method will return a two-element array. The first will 
  # be the ranking of the hand, 1 being straight flush, 9 being 
  # high-card-only. The second will be the high card. The two-pair 
  # case will be handled as a special case by another method. 
    
  def hand_value 
    sorted = @cards.sort_by {|card| card.value}
    values = values(sorted)
    #only runs when there is not even a pair
    return [9, values.last] if values == values.uniq unless is_a_straight?(sorted)
    
    #now check for pairs 
    #do with a counter hash
    #if length of hash.keys is 3, it's two-pair. if it's 4, it's one pair.
    #if it's 2, it must be a full house or four of a kind.
    #make sure 2-pair is not four-of-a-kind
    #(Actually, this counter hash can be used for the high-card test as well.)
    
    #we have the straight test. need a test for flush: all same suit.
    # run both, and you have the straight flush test. 
    
  
  
  end
  
  def values(arr)
    result = []
    arr.each do |el|
      result << el.value
    end 
    result
  end 
  private 
  
  def is_a_straight?(arr)
  
    arr.each_with_index do |el, idx| 
      next if idx + 1 == arr.length
      if arr[idx + 1].value != el.value + 1 
        return false 
      end 
    end 
    true
  end 
  
end 