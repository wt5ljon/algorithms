def binary_search(array, target)
	min = 0
	max = array.size - 1

	while max >= min do
		guess = (max + min)/2
		if array[guess] == target
			return guess
		elsif array[guess] < target
			min = guess + 1
		else
			max = guess - 1
		end
	end
	-1
end

# primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53,
# 	        59, 61, 67, 71, 73, 79, 83, 89, 97]
# target = 73
# index = binary_search(primes, target)
# if index > 0
# 	puts "  The index of #{target} in the primes array is #{index}"
# else
# 	puts "  #{target} not found in the primes array"
# end

