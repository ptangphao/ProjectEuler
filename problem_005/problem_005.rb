PRIME_MULTIPLE = (1 * 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19)

def divisible(num)
  (1..20).each do |t|
    return false if num % t != 0
  end
  puts num
  return true
end

def find_number
  i = PRIME_MULTIPLE
  loop do
    return i if divisible(i)
    i += PRIME_MULTIPLE
  end
end

puts find_number
