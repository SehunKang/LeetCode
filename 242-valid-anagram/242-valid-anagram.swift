class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character: Int]()
        
        s.forEach { dict[$0, default: 0] += 1}
        t.forEach { dict[$0, default: 0] -= 1}
        
        return dict.values.filter {$0 != 0}.count == 0
    }
}
