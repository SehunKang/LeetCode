class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        while left < s.count - 1 - left {
            let temp = s[left]
            s[left] = s[s.count - 1 - left]
            s[s.count - 1 - left] = temp
            left += 1
        }
    }
}
