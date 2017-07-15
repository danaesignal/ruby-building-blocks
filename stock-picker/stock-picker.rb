def stock_picker (pricing_history)
  @day_offset = 1
  @best_profit = 0
  pricing_history.each {|price_today|
    pricing_history.last(pricing_history.length - @day_offset).each {|future_price|
      if (future_price - price_today) > @best_profit
        if (pricing_history.index(future_price) > pricing_history.index(price_today))
          @best_profit = (future_price - price_today)
          @buy_date = pricing_history.index(price_today)
          @sell_date = pricing_history.index(future_price)
        end
      end
    }
  }
  puts "Bought on day #{@buy_date+1}, for #{pricing_history[@buy_date]}."
  puts "Sold on day #{@sell_date+1}, for #{pricing_history[@sell_date]}."
  puts "Total profit, $#{@best_profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
