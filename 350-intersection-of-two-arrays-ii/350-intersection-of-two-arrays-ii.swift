class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        
        for num in nums1 {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }
        
        for num in nums2 {
            if dict[num] != nil && dict[num] != 0 {
                result.append(num)
                dict[num]! -= 1
            }
        }
        
        return result
        
    }
}
