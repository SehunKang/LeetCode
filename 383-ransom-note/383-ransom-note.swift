class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var map: [String.Element: Int] = [:]
        
        for char in magazine {
            if map[char] == nil {
                map[char] = 1
            } else {
                map[char]! += 1
            }
        }
        
        for char in ransomNote {
            if map[char] == nil || map[char] == 0 {
                return false
            } else {
                map[char]! -= 1
            }
        }
        
        return true
    }
}
