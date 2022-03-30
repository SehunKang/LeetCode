class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var snowball = 0
        for i in nums.indices {
            if nums[i] == 0 {
                snowball += 1
            } else if snowball > 0 {
                let n = nums[i]
                nums[i] = 0
                nums[i - snowball] = n
            }
        }
    }
}
