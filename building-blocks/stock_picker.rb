=begin
Implement a method #stock_picker that takes in an array 
of stock prices, one for each hypothetical day. It should 
return a pair of days representing the best day to buy and 
the best day to sell. Days start at 0.	
=end

def stock_picker arr
	cache = Array.new(2)
	buy = 0
	sell = 0
	max = 0

	for i in arr
		for j in arr
			if (arr.index(j) > arr.index(i)) 
				if ((j - i) > max)
					max = j - i
					buy = arr.index(i)
					sell = arr.index(j)
				end	
			end
		end
	end

	cache[0] = buy
	cache[1] = sell
	cache.to_s
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([17,3,6,9,15,8,6,2,1000])