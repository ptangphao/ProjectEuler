rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]


get_list num = takeWhile(<(200/num)) [1..]

one_p = get_list 1
two_p = get_list 2
five_p = get_list 5
ten_p = get_list 10
twenty_p = get_list 20
fifty_p = get_list 50
hundred_p = get_list 100
two_hundred_p = get_list 200

-- In progress