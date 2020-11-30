def reverse_bits(n)
    result = 0
   
   32.times do
       result <<= 1
       result += n & 1
       n >>= 1
   end
   
   result
end