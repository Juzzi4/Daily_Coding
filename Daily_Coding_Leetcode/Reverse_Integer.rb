def reverse(x)
    number = x.abs
    reversed = 0
    
    while number != 0
        return 0 if reversed >= 2**31/10 + 0.8
        
        last_digit = number % 10
        reversed = (reversed * 10) + last_digit
        number = number / 10
    end
    
    x.negative? ? -reversed : reversed
end