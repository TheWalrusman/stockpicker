
def stock_picker(stockprices = [])
  sell_day = 0
  buy_day = 0
  max_profit = 0
  stockprices.each_with_index do |buy_price, buy_index|
    stockprices[buy_index..stockprices.length - 1].each_with_index do |sell_price, sell_index|
      if sell_price - buy_price > max_profit
        sell_day = sell_index + buy_index
        buy_day = buy_index
        max_profit = sell_price - buy_price
        end
    end
  end
  return [buy_day, sell_day, max_profit]
end

print stock_picker([17,3,6,17,3,6,9,15,8,6,1,10,9,15,8,6,1,10,17,3,6,9,15,8,6,1,10,17,3,6,9,15,8,6,1,10])