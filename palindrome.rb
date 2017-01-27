# recursively determine whether a string is a palindrome

def first_character(string)
	string[0]
end

def last_character(string)
	string[-1]
end

def middle_characters(string)
	string.slice(1..-2)
end

def palindrome?(str)
	if (str.size == 0 || str.size == 1)
		true
	elsif (first_character(str) != last_character(str))
		false
	else
		palindrome?(middle_characters(str))
	end
end

