class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var map: [String: Int] = [:]
        
        for char in s {
            if map[char.description] == nil {
                map[char.description] = 1
            } else {
                map[char.description]! += 1
            }
        }
        
        for (i, c) in s.enumerated() {
            if map[c.description] == 1 {
                return i
            }
        }
        
        return -1
    }
}
