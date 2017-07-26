def col(num)
  answer = [num]
  while answer[-1] != 1
    if answer[-1].even?
      next_num = answer[-1]/2
    else
      next_num = ((answer[-1]*3)+1)
    end
    answer << next_num
  end
  return answer
end

a = Time.now

max_length = 0
max_num = 0
for i in 1..1000000
  current_length = col(i).length
  if current_length > max_length
    max_length = current_length
    max_num = i
  end
end

p max_num
p Time.now - a