def stock_picker(prices_array) 
    if prices_array.length < 2
        return [0,0]
    end

    min_till_now = [prices_array[0], 0]
    max_profit = 0
    sell_day = 0
    buy_day = 0

    for day in 1...prices_array.length
        curr_profit = prices_array[day] - min_till_now[0]
        
        if curr_profit > max_profit
            max_profit = curr_profit
            sell_day = day
            buy_day = min_till_now[1]
        end

        if min_till_now[0] > prices_array[day]
            min_till_now[0] = prices_array[day]
            min_till_now[1] = day
        end
    end

    return max_profit >= 0 ? [buy_day, sell_day] : [0,0]
end


prices_array = [17,16,15,14,13]
puts stock_picker(prices_array)