def lowest_prime(n)
  i = 2
  while i * i <= n
    while n % i == 0
      n = (n / i)
      break if n == 1
    end
    i += 1
  end
  n
end

puts lowest_prime(600851475143)
