
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k == 0 { return }
        for _ in 1...k {
            nums.insert(nums.popLast()!, at: 0)
        }
    }
}
