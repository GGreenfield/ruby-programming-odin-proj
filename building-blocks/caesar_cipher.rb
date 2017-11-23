def caesar_cipher (string, shift)
	alpha = 'abcdefghijklmnopqrstuvwxyz'
	new_string = ''
	string.split('').each do |char|
		new_c = alpha[(alpha.index(char.downcase)+shift)%alpha.length]
		if (is_upper?(char)) 
			new_string += new_c.upcase
		else 
			new_string += new_c
		end
	end
	new_string
end

def is_upper? c 
	c == c.upcase
end

puts(is_upper?('c'))
puts(is_upper?('C'))
puts(caesar_cipher('abcd', 26) == 'abcd')
puts(caesar_cipher('ZaxB', 4) == 'DebF')

