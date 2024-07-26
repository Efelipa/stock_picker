def stock_picker(stock_prices)
  lowest_day = 0
  highest_day = 0
  profit = 0
  stock_prices.each_with_index do |lower, lower_index|
    stock_prices.each_with_index do |higher, higher_index|
      if higher-lower > profit && higher_index > lower_index
        profit = higher-lower
        highest_day = higher
        lowest_day = lower
      end
    end
  end
  first_day = stock_prices.index(lowest_day)
  second_day = stock_prices.index(highest_day)
  if first_day > 7
    first_day -= 7
  elsif second_day > 7
    second_day -= 7
  end
  [first_day, second_day]
end