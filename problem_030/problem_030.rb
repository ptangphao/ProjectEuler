list = []

(2..999999).each do |t|
  digits = t.to_s.chars.map(&:to_i)
  total = digits.map{|y| y**5}.reduce(:+)
  if total == t
    list << t
  end
end

puts list
puts list.reduce(:+)