class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n < 0 { return false }
        let bits = String(n, radix: 2)
        return bits.filter {$0 == "1"}.count == 1
    }
}
