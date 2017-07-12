def runner
maximum_total = 1000
a, b, c = 1

while a < maximum_total
  b = 1
  while b < maximum_total
    c = 1
    while c < maximum_total
      return [a,b,c] if a + b + c == maximum_total && (a**2 + b**2 == c**2)
      c += 1
    end
    b += 1
  end
  a += 1
end

end

a = Time.now
puts runner.reduce(:*)
puts "Time passed: #{Time.now - a}"