maximum_search num = toInteger(truncate(sqrt (fromIntegral num)))
max_search_list num = [2..maximum_search(num)]
factors num = [ x | x <- [2..maximum_search(num)], num `mod` x == 0]
prime num = factors num == []
prime_list list = filter prime list
answer num = last(prime_list(factors(num)))
