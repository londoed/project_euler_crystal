def is_prime(n)
  if n <= 3
    return n > 1
  elsif (n % 2 == 0 || n % 3 == 0)
    return false
  else
    (5..Math.sqrt(n).ceil).step(6) do |i|
      if (n % i == 0 || n % (i + 2) == 0)
        return false
      end
    end
    return true
  end
end

range = 2_000_000_i64
arr_of_primes = Array(Int64).new

(1_i64..range).each do |j|
  if is_prime(j)
    arr_of_primes << j
  end
end

answer = arr_of_primes.sum()
puts answer
