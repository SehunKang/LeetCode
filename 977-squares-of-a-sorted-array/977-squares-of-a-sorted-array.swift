
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map {$0 * $0}.sorted()
    }
}
