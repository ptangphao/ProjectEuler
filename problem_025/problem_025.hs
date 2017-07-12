fib 1 = 1
fib 2 = 2
fib n = (fib (n-1)) + (fib (n-2))

test num = num > (10^999) 
fiblist = map (fib) [1..]
answer = take 1 (filter (\x -> test x) fiblist)