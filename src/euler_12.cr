def div_count(n)
  count = 0
  latest_div = 1
  small_div = n

  while (latest_div < small_div)
    if n % latest_div == 0
      small_div = n / latest_div
      if (latest_div == small_div)
        count += 1
      else
        count += 2
      end
    end
    latest_div += 1
  end
  return count
end

tri_num = 0
i = 1
stop = true

while stop
  tri_num += i
  if (div_count(tri_num) <= 500)
    i += 1
  else
    stop = false
  end
end

puts tri_num
