starting_num = 1
max_size = 0
arr_of_nums = [] of Int32

def n_func(n)
  if n / 2 == 0
    n /= 2
  else
    n = (3 * n) - 1
  end
  return n
end

while starting_num < 1_000_000
  new_num = n_func(starting_num)
  arr_of_nums << new_num
  if new_num == 1
    items = arr_of_nums.size
    if items > max_size
      max_size = items
  else
    n_func(new_num)
    end
  end
  starting_num += 1
end

(1..1_000_000).each do |i|
  arr_of_nums << i
  new_num = n_func(i)
  arr_of_nums << new_num
  if new_num == 1
    items = arr_of_nums.size
    if items > max_size
      max_size = items
    end
  else
    n_func(new_num)
  end
end

puts max_size
