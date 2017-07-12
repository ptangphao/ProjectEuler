-- Create fibonacci list

fib 0 = 1
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

newlimit = map fib [1..]

-- Filter for evens only
evens_only list = filter even list

-- Limit list to values under 4000000

allowedfibs list = takeWhile (<4000000) list

-- Sum total

answer = sum(allowedfibs(evens_only(newlimit)))

