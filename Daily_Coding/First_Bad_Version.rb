def first_bad_version(n)
    i = 0
  j = n
  
  loop do
    mid = (i + j) / 2
    crnt_bad = is_bad_version(mid)
    previous_good = !is_bad_version(mid-1)
    
    if crnt_bad && prev_good
      return mid
    elsif crnt_bad
      j = mid - 1
    else
      i = mid + 1
    end
  end