def factors(num)
  return (1..num).select{|n| num % n == 0}
end

def triangle(num)
  (1..num).reduce(:+)
end

i = 2
answer = ""
a = Time.now
triangles = [1]
while answer == ""
  triangles << (triangles.last + i)
  answer = triangles.last if factors(triangles.last).length > 500
  puts "current triangle: #{triangles[-1]}"
  i += 1
end
puts "The answer is #{answer} and took #{Time.now - a} seconds"
