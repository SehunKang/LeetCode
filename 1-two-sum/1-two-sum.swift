class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            if dict[target - value] != nil {
                return [dict[target - value]!, index]
            }
            
            dict[value] = index
        }
        return [0]
    }
}
