def factors(num)
  answer = (1..(Math.sqrt(num).to_i + 1)).select{|n| num % n == 0}
  complete_answer = []
  answer.each do |ans|
    other = num/ans 
    complete_answer += [ans, other]
  end
  return complete_answer.uniq.count
end


def triangle(num)
  (1..num).reduce(:+)
end

a = Time.now

final = ""
i = 2
while final == ""
  current_num = triangle(i)
  if factors(current_num) > 500
    final = current_num
  end
  i += 1
end

p final
