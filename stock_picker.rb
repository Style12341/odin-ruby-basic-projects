def stock_picker(price_array)
  bestDay = [0, 0]
  bestProfit = 0
  price_array.each_with_index do |buyPrice, buyDay|
    remain_array = price_array[buyDay..-1]
    best_sell_idx = remain_array.index(remain_array.max) + buyDay
    currProfit = price_array[best_sell_idx] - buyPrice
    if currProfit > bestProfit
      bestProfit = currProfit
      bestDay = [buyDay, best_sell_idx]
    end
  end
  bestDay
end
p stock_picker([17,3,6,9,15,8,6,1,10])

