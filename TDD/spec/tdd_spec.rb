require 'rspec'
require 'tdd'

describe "#my_uniq" do 
  arr = [1,2,1,3,3]
  it "removes duplicate elements" do 
    expect(my_uniq(arr)).to eq(arr.uniq)
  end 
end 

describe "#two_sum" do 
  arr = [-1, 0, 2, -2, 1]
  it "returns an array of sorted index pairs" do 
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end 
end 

describe "#my_transpose" do 
  it "transposes a square matrix" do 
    expect(my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ])).to eq([[0, 3, 6],
       [1, 4, 7],
       [2, 5, 8]])
  
  end 
end 

describe "#stock_picker" do
  arr = [23,35,42,8,16,33,31,25]
  it "picks most profitable pair of days" do 
    expect(stock_picker(arr)).to eq([3,5])
  end 
end