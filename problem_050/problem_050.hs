prime num = [x | x <- (init [2..num]), num `mod` x == 0] == []

primelist = filter (prime) [2..]

primesumlist num = sum(take num primelist)

test = filter (prime) (takeWhile (<1000000) (map primesumlist [1..]))

-- Make a list of all possible sum combinations under 1 million

answer = last (filter (prime) (takeWhile (<1000000) (map primesumlist [1..])))