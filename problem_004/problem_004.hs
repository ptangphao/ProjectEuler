palindrome num = reverse(show num) == (show num)
products = [x*y | x <- [100..999], y <- [100..999], palindrome(x*y)]
answer = maximum products