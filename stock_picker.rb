#Returns Nested Hash - key is array[key] value or the buy price, array value for key is profit that buy price would get for the remaining sell prices. 
def stock_picker (array)
  profit = []
  profit_test = Hash.new
  x = 0
  y = 1

  while x < array.length

    while y < array.length
      profit.push(array[y] - array[x])
      profit_test[x] = profit
      y += 1
    end

    if y > array.length && x > array.length
      profit_test
    else     
      y = x + 1
      profit = []
    end
    x += 1
  end

  
  puts profit_test
end






stock_picker([17,3,6,9,15,8,6,1,10])