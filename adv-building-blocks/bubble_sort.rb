def bubble_sort arr
	sorted = false
	while (!sorted)
		swapped = false
		(0..arr.length-2).each do |i|
			if (arr[i] > arr[i+1])
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
			end
		end
		if (!swapped)
			sorted = true
		end
	end
	arr
end


def bubble_sort_by arr
	sorted = false
	while (!sorted)
		swapped = false
		(0..arr.length-2).each do |i|
			res = yield(arr[i], arr[i+1])
			if (res>0)
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
			end
		end
		if (!swapped)
			sorted = true
		end
	end
	arr
end

puts (bubble_sort([4,3,78,2,0,2]) == [0,2,2,3,4,78])
puts(bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end == ["hi", "hey", "hello"])
