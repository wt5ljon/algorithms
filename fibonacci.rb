def fib(n)
	if n == 0
		0
	elsif n == 1
		1
	else
		fib(n-1) + fib(n-2)
	end
end

(0..35).each { |n| puts "  fib(#{n}) = #{fib(n)}" }

