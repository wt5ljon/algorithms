# non-recursive method to calculate factorial
def factorial1(number)
	result = 1
  while (number > 0) do
		result *= number
		number -= 1
	end
	result
end

# recursive method to calculate factorial
def factorial(number)
	if (number == 0)
		return 1
	else
		return number * factorial(number-1)
	end
end

