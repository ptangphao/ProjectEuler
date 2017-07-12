fibs = [0,1]

while fibs[-1] + fibs[-2] < 4000000:
	fibs.append(fibs[-1]+fibs[-2])

print reduce((lambda x, y: x + y),filter(lambda x : x % 2 == 0, fibs))
