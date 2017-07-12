def is_palindrome?(num)
  return num.to_s == num.to_s.reverse
end

def runner
  palindromes = []
  a = (100..999).to_a.reverse

  a.each do |t|
    a.each do |y|
      palindromes << (t*y) if is_palindrome?(t*y)
    end
  end
  return palindromes.max
end

puts runner