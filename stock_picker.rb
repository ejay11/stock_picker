#Returns Nested Hash - key is array[key] value or the buy price, array value for key is profit that buy price would get for the remaining sell prices. 
def stock_picker (array)
  profit_list = []
  best_days = []
  x = 0
  y = 1

  # while x < array.length

  # Puts profits of every sale into an array
    # while y < array.length
      # profit_list.push(array[y] - array[x])
      # y += 1
    # end

    # if y > array.length && x > array.length
      # profit_list
    # else     
      # y = x + 2
    # end
    # x += 1
  # end
  
  # Instead of while loops and manually incrementing the index, each_with_index can do that for you
  # For each day, we take the days not in the past and get the profit.
  bestProfitInfo = [] # a triple containing profit, buy, sell days. maybe a hash would be nicer.
  array.each_with_index do |bp, bi|
	noPast = array[bi..-1]
	noPast.each_with_index do |sp, si|
		profit = sp - bp
		profit_list.push(profit) # Don't really need this if we do the below.
		# At this point I can go with the loop below and be good, but it's effectively doing the same work
		# twice of calculating all the profits, so instead I can capture the index values here.
		sellDay = bi + si
		todayProfitInfo = [profit, bi, sellDay]
		puts "Buying on day #{bi} at #{bp} and selling on day #{sellDay} for #{sp} is a profit of #{profit}."
		if (bestProfitInfo == [])
			bestProfitInfo = todayProfitInfo
		elsif (todayProfitInfo[0] > bestProfitInfo[0])
			puts "It's the best profit so far!"
			bestProfitInfo = todayProfitInfo
		end
	end
end
	puts "Best profit is $#{bestProfitInfo[0]} on days #{bestProfitInfo[1..2]}."
	return bestProfitInfo[1..2]
  

# largest_profit = profit_list.max

#Finds and returns the array indexes for the best buy and sell prices to get largest_profit
# array.each_with_index do |buy, index|
  # y = 0
  # while y < array.length
    # if array[y] - buy == largest_profit
      # best_days.push(index, y)
      # print best_days
    # end
    # y += 1
  # end
# end
end






stock_picker([17,3,6,9,15,8,6,1,10])