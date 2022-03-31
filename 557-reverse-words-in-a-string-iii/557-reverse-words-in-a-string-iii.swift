class Solution {
    func reverseWords(_ s: String) -> String {
        var c = String(s.split(separator: " ").map { $0.reversed() }.flatMap {$0 + " "})
        c.removeLast()
        return c
    }
}
