class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazine = magazine
        for i in ransomNote {
            if magazine.contains(i) {
                magazine.remove(at: magazine.firstIndex(of: i)!)
                continue
            }
            return false
        }
        return true
    }
}