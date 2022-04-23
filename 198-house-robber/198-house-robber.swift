class Solution {
    func rob(_ nums: [Int]) -> Int {
        var prev2 = 0
        var prev = 0
        
        for num in nums {
            let tmp = prev
            prev = max(prev2 + num, prev)
            prev2 = tmp
        }
        
        return prev
    }
}
