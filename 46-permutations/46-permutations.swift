class Solution {
    private func task(maxIndex: Int, result: inout [[Int]], element: inout [Int], nums: [Int]){
        
        if element.count - 1 == maxIndex {
            result.append(element)
            return
        }
        
        for i in 0...maxIndex {
            if element.contains(nums[i]) { continue }
            element.append(nums[i])
            task(maxIndex: maxIndex, result: &result, element: &element, nums: nums)
            element.removeLast()
        }
        
    }
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var element = [Int]()
        
        task(maxIndex: nums.count - 1, result: &result, element: &element, nums: nums)
        
        return result
        
    }
}
