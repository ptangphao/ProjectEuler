import Data.Char

factorial num = product[1..num]
tostr num = show num

string num = tostr (factorial num)

answer num = sum(map digitToInt (string num))