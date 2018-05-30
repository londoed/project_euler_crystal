total = 0

(0...1000).each do |i|
  if (i % 3 == 0) || (i % 5 == 0)
    total += i
  end
end

puts total
