# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(stocks)
    lowest = stocks[0]
    profit = 0
    min_index = 0
    days = []

    stocks.each_with_index do |value, index|
        if value < lowest do
            lowest = value
            min_index = index
            next
        end
        
        if value - lowest > profit do
            profit = value - lowest
            days = [min_index, index]
        end    
    end
    days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])