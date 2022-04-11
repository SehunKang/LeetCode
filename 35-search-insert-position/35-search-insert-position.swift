class Solution {
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while high > low {
            let mid = high - (high - low) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        if target > nums[high] {
            return high + 1
        } else {
            return high
        }
        
    }
}
