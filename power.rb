def power(base, exp)
	if exp == 0
		return 1
	elsif exp > 0 
		# positive, even exponent
		if exp % 2 == 0
			p = power(base, exp/2)
			return p*p
		else
		# positive, odd exponent
			return base * power(base, exp-1)
		end
	else
		# negative exponent
		return 1.0/power(base, -exp)
	end
end

