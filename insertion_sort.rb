def insertion_sort(original)
	# dup input array to avoid side-effects
	array = original.dup
	key_index = 1
	while key_index < array.size do
		key = array[key_index]
		sorted_index = key_index - 1
		while sorted_index >= 0 do
			if array[sorted_index] > key
				array[sorted_index + 1] = array[sorted_index]
				if sorted_index == 0
					array[0] = key
					break
				end
			else
				array[sorted_index + 1] = key
				break
			end
			sorted_index -= 1
		end
		key_index += 1
	end
	array
end

