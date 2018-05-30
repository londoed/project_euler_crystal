def sum_of_squares()
  arr = Array(Int32).new
  total_square = 0
  square_sum = 0
  square_total = 0
  sum_square = 0
  i = 1
  j = 1

  while i < 101
    total_square += (i**2)
    i += 1
  end
  while j < 101
    arr << j
    j += 1
  end
  square_sum = arr.sum()
  square_total = square_sum**2
  difference = square_total - total_square
  return difference
end

puts sum_of_squares()
