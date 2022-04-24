class Solution {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        var n = n
        
        for _ in 1...31 {
            let b = (n & 1)
            result += b
            result = result << 1
            n = n >> 1
        }
        result += (n & 1)
        return result
    }
}
