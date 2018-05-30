def is_triplet(a, b, c)
  if (a**2 + b**2 == c**2)
    return true
  end
end

(1...1000).each do |i|
  (i...1000).each do |j|
    (j...1000).each do |k|
      if (i + j + k == 1000 && is_triplet(i, j, k))
        puts (i * j * k)
      end
    end
  end
end
