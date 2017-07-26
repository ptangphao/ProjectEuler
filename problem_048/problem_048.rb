p (1..1000).map{|t|t**t}.reduce(:+).to_s[-10..-1]
