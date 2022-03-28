class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count - 1
        
        while hi - lo > 1 {
            let mid = lo + (hi - lo) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                hi = mid
            } else {
                lo = mid
            }
        }
        
        if target > nums[hi] {
            return hi + 1
        } else if target > nums[lo] {
            return lo + 1
        } else {
            return lo
        }
    }
}
