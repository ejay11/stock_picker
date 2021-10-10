# def stock_picker (array)
#   buy = array.min
#   sell = array.max
#   if array.index(array.min) < array.index(array.max)
#     puts buy
#     puts sell
#   else
#     # think this is iterating over all, so buy will always be array[0]. need something else
#     buy = array.min { |a, b| array.index(a) <=> array.index(b)}
#     puts buy
#   end

    
 
# end

# def stock_picker (array)
# #profits =  array.map.with_index {|value, index| puts array[index +1] - value}
# profits =  array.map.with_index {|value, index| puts array[index +1], value}
# puts profits
# end

#Currently iterating over array[0] as a buy date to see all profits
# def stock_picker (array)
#   profit = []
#   x = 0
#   y = 1
#   while profit.length + 1 < array.length do
#     puts array[y]
#     profit.push(array[y] - array[0])
#     y += 1
#   end
#   puts profit
# end

#works. Now, can I turn initial array into a hash, then assign the profit values as a nested array for each hash value? 
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
      y = 0
      profit = []
    end
    x += 1
  end
#Calculating profit for each initial array value
#  while x < array.length do

#     while y < array.length
#       profit.push(array[y] - array[x])
#       profit_test[x] = profit
#       y += 1
#       #NEED TO CREATE IF/ELSE TO WIPE Y BACK TO 1 AND BUMP UP X FOR NEXT ITERATION
#     end
#     x += 1
  
  puts profit_test
end

# if x < array.length
#   while y < array.length
#     profit.push(array[y] - array[x])
#     profit_test[x] = profit
#     y += 1
#     x += 1
#   end






stock_picker([17,3,6,9,15,8,6,1,10])