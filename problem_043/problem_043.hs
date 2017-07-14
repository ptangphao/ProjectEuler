-- Create a list of all pandigital numbers with 0 to 9 = [0..10]
import Data.Char
import Data.List


x = [1..9]
y = [0..9]

potentials = [[a,b,c,d,e,f,g,h,i,j]| a <- x, b <- y, c <- y, d <- y, e <- y, f <- y, g <- y, h <- y, i <- y, j <- y]
pot = [[a,b]| a <-x, b <- y]
stringlist list = map (map show) list
listed list = map concat list
test list = (nub list) == list
filtered = filter test (listed (stringlist potentials))
fil = filter test (listed (stringlist pot))
strtoint str = read str::Int
answer = sum (map strtoint filtered)

This will work but takes way too long