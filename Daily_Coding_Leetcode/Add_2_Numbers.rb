def add_two_numbers(l1, l2)
    res = ListNode.new("!")
    temp = res
    carrier = false
    while l1 || l2
        l1 ||= ListNode.new(0)
        l2 ||= ListNode.new(0)
        sum = l1.val + l2.val
        if carrier
            sum += 1
            carrier = false
        end
        if sum < 10
            node = ListNode.new(sum)
            temp.next = node
        else
            carrier = true
            puts sum - 10
            node = ListNode.new(sum - 10)
            temp.next = node
        end
        l1 = l1.next
        l2 = l2.next
        temp = temp.next
    end
    if carrier
        temp.next = ListNode.new(1)
    end
    return res.next
end