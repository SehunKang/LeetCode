class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let num = nums.sorted()
        var left = 0
        var right = num.count - 1
        while num[left] + num[right] != target {
            if num[left] + num[right] < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return [nums.firstIndex(of: num[left])!, nums.lastIndex(of: num[right])!]
    }
}
