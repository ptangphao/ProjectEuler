import Data.List

list a b = [x^y | x <- a, y <- b]
answer = length (nub (list [2..100] [2..100]))
