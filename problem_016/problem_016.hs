import Data.Char

strnum num = show num
numlist str = map digitToInt str
test a = numlist (strnum a)
answer num = sum (numlist (strnum(num)))