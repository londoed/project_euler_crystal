def find_multiple()
  i = 1
  (2...20).each do |j|
    i *= j / gcd(i, j)
  end
  return i
end

def gcd(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end
  return a
end

puts find_multiple()
