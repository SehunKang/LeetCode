class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = numbers.count - 1
        while numbers[l] + numbers[r] != target {
            if numbers[l] + numbers[r] < target {
                l += 1
            } else {
                r -= 1
            }
        }
        return [l + 1, r + 1]
    }
}
