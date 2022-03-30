class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for i in nums.indices.reversed() {
            if nums[i] == 0 {
                nums.remove(at: i)
                nums.append(0)
            }
        }
    }
}
