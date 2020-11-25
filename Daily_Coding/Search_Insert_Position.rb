binary_search(nums,target, 0, nums.length - 1)    
end

def binary_search(nums, target, start_index, end_index)
    return end_index + 1 if start_index > end_index
    mid  =  start_index + (end_index - start_index) / 2
    if nums[mid] == target
        return mid
    elsif target > nums[mid]
        return binary_search(nums, target, mid+1, end_index)
    else
        return binary_search(nums, target, start_index, mid -1)
    end