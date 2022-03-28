class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count
        var mid = hi / 2
        
        while lo < hi {
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                hi = mid
                mid = hi / 2
            } else if nums[mid] < target {
                lo = mid + 1
                mid = mid + ((hi - mid) / 2)
            }
        }
        return -1
    }
}
