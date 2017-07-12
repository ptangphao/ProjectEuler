prime num = [x | x <- init([2..num]), num `mod` x == 0] == []
primes = filter prime [2..]
increment = product(takeWhile (<21) primes)

divisible num = [x | x <- [1..20], num `mod` x == 0] == [1..20] 

answer = take 1 (filter (divisible) [increment,(2*increment)..])