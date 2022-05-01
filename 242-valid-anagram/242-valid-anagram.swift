class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if t.count != s.count { return false }
        var t = t
        for char in s {
            if t.contains(char) {
                t.remove(at: t.firstIndex(of: char)!)
                continue
            }
            return false
        }
        return true
    }
}
