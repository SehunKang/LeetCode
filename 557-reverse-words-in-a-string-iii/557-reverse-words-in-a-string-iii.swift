class Solution {
    func reverseWords(_ s: String) -> String {
        String(s.split(separator: " ").map {$0.reversed()}.joined(separator: " "))
    }
}
