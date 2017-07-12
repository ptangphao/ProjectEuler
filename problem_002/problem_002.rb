fibs = [0,1]

while (fibs[-1] + fibs[-2]) < 4000000
	fibs << fibs[-1] + fibs[-2]
end

puts fibs.select{|num| num % 2 == 0}.reduce(:+)