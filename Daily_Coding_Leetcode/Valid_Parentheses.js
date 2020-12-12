var isValid = function(s) {
    const stack = []
    const keys = {
        '(': ')',
        '{': '}',
        '[': ']',
    }
    for (const ch of s) {
        if (ch in keys) {
            stack.push(keys[ch])
        } else {
            if (stack.length === 0 || stack.pop() !== ch) {
                return false
            }
        }
    }
    return stack.length === 0
};