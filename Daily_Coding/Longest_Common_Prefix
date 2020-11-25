def longest_common_prefix(strs)
    if strs == []
        return ""
    end
    strs = strs.sort_by { |str| str.length }
    shortest_prefix = strs[0]
    strs[1..-1].each do |word|     
        while true 
            if shortest_prefix == ""
                return ""
            end       
            if word[0..shortest_prefix.length - 1] == shortest_prefix
                break
            else 
                shortest_prefix.chop! 
            end
        end
    end
    return shortest_prefix
end