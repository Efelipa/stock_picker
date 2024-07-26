require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock Picker' do
  describe 'Pick the pair of day that represents the best day to buy and sell' do
    it 'return an array with the lowest day and the highest day' do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
    end
  end
  describe 'Pick the pair of day in the edge cases when have more than 7 days' do
    it 'return an array with the lowest day and the highest day' do
      expect(stock_picker([1,2,4,7,12,11,10,21, 24])).to eq([0, 1])
    end
  end
end