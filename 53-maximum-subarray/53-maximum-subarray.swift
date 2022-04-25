class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums.first!}
        var nums = nums
        var largest = nums[0]
        
        for i in 1...nums.count - 1 {
            nums[i] = max(nums[i] + nums[i - 1], nums[i])
            largest = max(nums[i], largest)
        }
        
        return largest
    }
}
