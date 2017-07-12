def is_prime?(number)
  (2...number).each do |t|
    return false if number % t == 0
  end
  return true
end

def runner
  primes = []
  (2...20000000).each do |t|
    primes << t if is_prime?(t)
  end
  return primes.reduce(:+)
end 

puts runner

