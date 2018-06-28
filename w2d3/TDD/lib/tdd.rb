def my_uniq(arr)
  result = []
  arr.each do |el|
    result << el unless result.include?(el)
  end 
  result
end 
class Array 
  def two_sum()
    result = []
    self.each_index do |idx|
      (idx+1...self.length).each do |idx2|
        result << [idx,idx2] if self[idx] + self[idx2] == 0
      end 
    end
    result
  end 
end 

def my_transpose(arr)
  result = Array.new(arr.length){Array.new(arr.length)}
  arr.each_with_index do |row, idx1| 
    row.each_with_index do |el, idx2|
      result[idx2][idx1] = el
    end 
  end 
  result
end 

def stock_picker(prices)
  result = []
  max_profit = 0
  prices.each_index do |idx|
    (idx+1...prices.length).each do |idx2|
      if prices[idx2] - prices[idx] > max_profit
        result = [idx,idx2]
        max_profit = prices[idx2] - prices[idx]
      end 
    end 
  end
  result
end 