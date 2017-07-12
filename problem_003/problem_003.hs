maximum_search num = toInteger(truncate(sqrt (fromIntegral num)))

factors num = [ x | x <- [2..maximum_search(num)], num `mod` x == 0]
prime num = factors num == []
prime_list list = [x | x <- list, prime(x)]

-- prime_list num = filter prime [1..num]

answer num = last(prime_list(factors(num)))
