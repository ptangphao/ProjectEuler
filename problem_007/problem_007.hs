-- Determine maximum search value

maximum_search num = toInteger(truncate(sqrt (fromIntegral num)))

-- Create search list

max_search_list num = [2..maximum_search(num)]

-- Create factors list

factors num = [ x | x <- [2..maximum_search(num)], num `mod` x == 0]

-- Determine if a number is prime

prime num = factors num == []

-- Filter list to only include prime numbers

prime_list list = filter prime list

-- Generate the largest prime factor for a num

thelast = last(take 10001 (prime_list [2..]))