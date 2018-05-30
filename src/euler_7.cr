def factors(n)
  factors = Array(Int32).new
  while n % 2 == 0
    factors << 2
    n /= 2
  end
  p_num = 3
  while n != 1
    while n % p_num == 0
      factors << p_num
      n /= p_num
    end
    p_num += 2
  end
  return factors
end

def nth_prime(n)
  prime = 2
  count = 1
  num = 3
  while count < n
    if factors(num).size == 1
      prime = num
      count += 1
    end
    num += 2
  end
  return prime
end

prime = nth_prime(10001)
puts prime
