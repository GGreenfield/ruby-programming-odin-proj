=begin
Implement a method #substrings that takes a word as the 
first argument and then an array of valid substrings 
(your dictionary) as the second argument. It should return a 
hash listing each substring (case insensitive) that was found 
in the original string and how many times it was found
=end

def substrings (word, arr)
	hash = Hash.new

	for word in word.split(' ')
		for item in arr
			if (word.downcase[item])
				if (!hash.has_key?(item))
					hash[item] = 1
				else
					hash[item] += 1
				end
			end
		end
	end
	hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts (substrings("Howdy partner, sit down! How's it going?", dictionary) ==  { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 })
