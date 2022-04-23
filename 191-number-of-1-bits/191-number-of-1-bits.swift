class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var result = 0
        var n = n
        while n > 0 {
            if n & 1 == 1 {
                result += 1
            }
            n = n >> 1
        }
        return result
    }
}
