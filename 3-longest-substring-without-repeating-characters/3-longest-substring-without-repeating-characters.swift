class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var sub: [String] = []
        var result = 0
        for char in s {
            if sub.contains(char.description) {
                if sub.count > result {
                    result = sub.count
                }
                sub.removeSubrange(0...sub.firstIndex(of: char.description)!)
            }
            sub.append(char.description)
        }
        return result < sub.count ? sub.count : result
    }
}
