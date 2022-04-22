class Solution {
    var cash: [Int: Int] = [1: 1, 2: 2]

    func climbStairs(_ n: Int) -> Int {

        var result = 0

        if cash[n] != nil {
            return cash[n]!
        }

        result += climbStairs(n - 1)
        result += climbStairs(n - 2)

        cash[n] = result
        return result
    }
}
