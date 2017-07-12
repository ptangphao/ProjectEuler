-- Solution takes too long - revisit - consider sieve

factors num = filter (\x -> num `mod` x == 0) [1..num]
has_five number = (length (factors number)) > 500

qualified = filter (\x -> has_five x) triangly

triangly = map tri [1..]
-- triangly = map triangle [1..]

tri num = sum([1..num])
triangle 1 = 1
triangle 2 = 3
triangle n = n + (triangle (n-1))

-- factorscount  num = map triangly 

