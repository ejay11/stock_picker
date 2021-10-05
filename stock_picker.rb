def stock_picker (array)
  buy = array.min
  sell = array.max
  if array.index(array.min) < array.index(array.max)
    puts buy
    puts sell
  else
    # think this is iterating over all, so buy will always be array[0]. need something else
    buy = array.min { |a, b| array.index(a) <=> array.index(b)}
    puts buy
  end

    
 
end

stock_picker([17,3,6,9,15,8,6,1,10])