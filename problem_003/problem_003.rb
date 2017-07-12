def prime_factors(number)
  factors = []
  test_number = 2
  while number >= test_number
    if number % test_number == 0
      number /= test_number
      factors << test_number
    else
      test_number += 1
    end
  end
  return factors
end

puts prime_factors(600851475143).max

# Since we started at the number 2, any factors we get will have to be prime.     