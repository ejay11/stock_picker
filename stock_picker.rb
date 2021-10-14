#Returns Nested Hash - key is array[key] value or the buy price, array value for key is profit that buy price would get for the remaining sell prices. 
def stock_picker (array)
  profit_list = []
  best_days = []
  x = 0
  y = 1

  while x < array.length

    #Puts profits of every sale into an array
    while y < array.length
      profit_list.push(array[y] - array[x])
      y += 1
    end

    if y > array.length && x > array.length
      profit_list
    else     
      y = x + 2
    end
    x += 1
  end

largest_profit = profit_list.max

#Finds and returns the array indexes for the best buy and sell prices to get largest_profit
array.each_with_index do |buy, index|
  y = 0
  while y < array.length
    if array[y] - buy == largest_profit
      best_days.push(index, y)
      print best_days
    end
    y += 1
  end
end
end






stock_picker([17,3,6,9,15,8,6,1,10])