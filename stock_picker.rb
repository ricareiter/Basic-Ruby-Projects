stock_prices = [12,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    sell_price = prices[0]
    buy_price = prices[0]
    buy_index = 0
    profit = 0
    buy_and_sell_days = [0,0]
    prices.each_with_index do |price, index|
        if (price < buy_price)
            buy_price = price
            buy_index = index
            next
        end

        if (price - buy_price > profit)
            profit = price - buy_price
            sell_price = price
            sell_index = index
            buy_and_sell_days = [buy_index, index]     
        end 
        
    end
    return buy_and_sell_days
end

p stock_picker(stock_prices)