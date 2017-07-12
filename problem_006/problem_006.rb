sum_of_the_squares = (1..100).map{|t| t**2 }.reduce(:+)
square_of_the_sum = (1..100).reduce(:+)**2

puts square_of_the_sum - sum_of_the_squares