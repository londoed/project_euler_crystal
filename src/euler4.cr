def largest_palindrome(n)
  arr = Array(Int32).new
  (900...n).each do |i|
    (900...n).each do |j|
      product = j * i
      if product.to_s == product.to_s.reverse
        arr << product
      end
    end
  end
  max_pal = arr[-1]
  puts max_pal
end

largest_palindrome(999)
