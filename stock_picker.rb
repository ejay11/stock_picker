def stock_picker (array)  
  best_profit = []
  array.each_with_index do |buy_price, buy_index|
    #create new array beginning right after buy index and going to whatever the end is
	  noPast = array[buy_index..-1]
	    noPast.each_with_index do |sell_price, sell_index|
		    profit = sell_price - buy_price
		    sell_day = buy_index + sell_index
		    today_profit = [profit, buy_index, sell_day]
		    #puts "Buying on day #{buy_index} at #{buy_price} and selling on day #{sell_day} for #{sell_price} is a profit of #{profit}."
		    if (best_profit == [])
			    best_profit = today_profit
		    elsif (today_profit[0] > best_profit[0])
			  #puts "It's the best profit so far!"
			  best_profit = today_profit
		end
	end
end
	puts "Best profit is $#{best_profit[0]} on days #{best_profit[1..2]}."
	return best_profit[1..2]
  
end






stock_picker([17,3,6,9,15,8,6,1,10])