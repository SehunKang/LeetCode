class Solution {
    func letterCasePermutation(_ s: String) -> [String] {
        var result: [String] = [""]
        
        for char in s {
            if char.isLetter {
                result = result.flatMap {["\($0)\(char.lowercased())","\($0)\(char.uppercased())"]}
            } else {
                result = result.map {"\($0)\(char)"}
            }
        }
        
        return result
    }
}
