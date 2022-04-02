
class Solution {
    private func isMatch(s1Map: [Int], s2Map: [Int]) -> Bool {
        for i in 0...25 {
            if s1Map[i] != s2Map[i] {
                return false
            }
        }
        return true
    }
    
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else {return false}
        let s1 = Array(s1)
        let s2 = Array(s2)
        var s1Map = Array(repeating: 0, count: 26)
        var s2Map = Array(repeating: 0, count: 26)

        for i in s1.indices {
            s1Map[Int(s1[i].asciiValue! - Character("a").asciiValue!)] += 1
            s2Map[Int(s2[i].asciiValue! - Character("a").asciiValue!)] += 1
        }
        
        for i in 0..<s2.count - s1.count {
            if isMatch(s1Map: s1Map, s2Map: s2Map) {
                return true
            }
            s2Map[Int(s2[i + s1.count].asciiValue! - Character("a").asciiValue!)] += 1
            s2Map[Int(s2[i].asciiValue! - Character("a").asciiValue!)] -= 1
        }
        return isMatch(s1Map: s1Map, s2Map: s2Map)
    }
}