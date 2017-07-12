def is_prime?(number)
  (2...number).each do |t|
    return false if number % t == 0
  end
  return true
end

primes = [2,3,5,7,11,13]

i = 14
until primes.length == 10001
  primes << i if  is_prime?(i)
  puts primes.length
  i += 1
end

puts primes.last
