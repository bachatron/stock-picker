def stock_picker (stock)
    stored = 0
    new_arr = []
    stock.each do |price|
      stock[stock.index(price)..-1].each do |next_price|
        current_gain = next_price - price
        if current_gain > stored
          stored = current_gain
          new_arr[0] = [price]
          new_arr[1] = [next_price]
        end
      end
    end
    new_arr
end
  
puts stock_picker([17,3,6,9,15,8,6,1,10])