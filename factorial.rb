# non-recursive method to calculate factorial
def factorial1(n)
	result = 1
  while (n > 0) do
		result *= n
		n -= 1
	end
	result
end

# recursive method to calculate factorial
def factorial(n)
	if n == 0
		1
	else
		n * factorial(n-1)
	end
end

