class Towers
  attr_reader :size, :towers
  
  def initialize
    @towers = [[3,2,1], [], []]
  end
  
  def play 
    until won?
      render
      print "Enter start tower and end tower like this '0,1': "
      input = gets.chomp
      start_tower, end_tower = input.split(",").map {|el| Integer(el)}
      move(start_tower, end_tower)
    end     
  end
   
  def render 
    print towers[0]
    print towers[1]
    print towers[2]
    puts ""
  end
   
  def move(start_tower, end_tower)
    raise ArgumentError if start_tower == end_tower 
    raise ArgumentError unless valid_move?(start_tower, end_tower)
    @towers[end_tower] << @towers[start_tower].pop
  end 
  
  def valid_move?(start_tower, end_tower)
    return true if @towers[end_tower].empty?
    return false if @towers[end_tower].last < @towers[start_tower].last
    true
  end
  
  def won?
    towers[0].empty? && (towers[1].empty? || towers[2].empty?)
  end 
end 

