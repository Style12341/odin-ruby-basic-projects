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

def stock_picker_faster(price_array)
  bestDay = [0, 0]
  bestProfit = 0
  maxArray = []
  maxPrice = [0, -1]
  currIdx = price_array.length - 1
  price_array.reverse_each do |price|
    maxPrice = [price, currIdx] if price > maxPrice[0]
    maxArray.unshift(maxPrice)
    currIdx -= 1
  end
  price_array.each_with_index do |buyPrice, buyDay|
    currProfit = maxArray[buyDay][0] - buyPrice
    if currProfit > bestProfit
      bestProfit = currProfit
      bestDay = [buyDay, maxArray[buyDay][1]]
    end
  end
  bestDay
end

p stock_picker_faster([17, 3, 6, 9, 15, 8, 6, 1, 10])
