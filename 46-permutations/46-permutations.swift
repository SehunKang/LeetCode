class Solution {
    private func task(maxIndex: Int, element: inout [Int], nums: [Int], result: ([Int]) -> (Void) ){
        
        if element.count - 1 == maxIndex {
            result(element)
            return
        }
        
        for i in 0...maxIndex {
            if element.contains(nums[i]) { continue }
            element.append(nums[i])
            task(maxIndex: maxIndex, element: &element, nums: nums, result: result)
            element.removeLast()
        }
        
    }
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var element = [Int]()
        
        task(maxIndex: nums.count - 1,element: &element, nums: nums) {
            result.append($0)
        }
        
        return result
        
    }
}
