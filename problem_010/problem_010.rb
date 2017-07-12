def is_prime?(number)
  (2..Math.sqrt(number)).each do |t|
    return false if number % t == 0
  end
  return true
end

def runner
  primes = []
  (2...2000000).each do |t|
    puts t
    primes << t if is_prime?(t)
  end
  return primes.reduce(:+)
end 

a = Time.now
puts runner
puts "#{a - Time.now} seconds passed"

