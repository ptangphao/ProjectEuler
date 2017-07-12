def max_prime_factor(number):
	first_count = 2
	factors = []
	while number >= first_count:
		if number % first_count == 0:
			factors.append(first_count)
			number /= first_count
		else:
			first_count += 1
	return max(factors)

print max_prime_factor(600851475143 )