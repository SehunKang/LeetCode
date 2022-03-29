class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k != 0 {
            for i in 1...k {
                let pick = nums.last!
                nums.removeLast()
                nums.insert(pick, at: 0)
            }
        }
    }
}
