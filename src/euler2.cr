total = 0
previous = 0
i = 1

while i <= 4_000_000
  total += i if (i % 2 == 0)
  i, previous = previous, previous + i
end

puts total
