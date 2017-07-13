-- Define a function that takes in 2 numbers and determines whether or not they are pandigital together
import Data.Char
import Data.List

pandigital x y = (map digitToInt (show(x) ++ show(y))) == (nub (map digitToInt (show(x) ++ show(y))))
pan x y = (0 `elem` (map digitToInt (show(x) ++ show(y)))) == False
products = nub ( [x*y | x <- [1..999999999], y <- [1..999999999], pandigital x y, pan x y])
answer = length products
-- use nub to select unique values