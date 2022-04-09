
class Solution {
    
    func backTrack(result: inout [[Int]], element: inout [Int], nums: [Int]) {
        if element.count == nums.count {
            result.append(element)
            return
        }
        
        for i in nums.indices {
            if element.contains(nums[i]) { continue }
            
            element.append(nums[i])
            backTrack(result: &result, element: &element, nums: nums)
            element.removeLast()
        }
        
    }
    
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var element = [Int]()
        backTrack(result: &result, element: &element, nums: nums)
        return result
        
    }
}
