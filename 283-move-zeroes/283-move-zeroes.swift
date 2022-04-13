class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        nums = nums.filter {num in
            if num == 0 {
                count += 1
                return false
            } else {
                return true
            }
        }
        nums += Array<Int>.init(repeating: 0, count: count)
    }
}
