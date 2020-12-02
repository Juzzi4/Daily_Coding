def guessNumber(n)
    high = n
    low = 1
    pick = n/2
    while true
        result = guess(pick)
        return pick if result == 0
        if result == 1
            low = pick + 1
        else
            high = pick - 1
        end
        pick = (high+low) / 2
    end
end