class Solution {
    private func task(index: Int ,currentStr: String, chars: [Character], result: inout [String]) {
        
        if currentStr.count == chars.count {
            result.append(currentStr)
            return
        }
        
        if index > chars.count - 1 { return}
        
        for i in index...chars.count - 1 {
            if chars[i].isLetter {
                task(index: i + 1, currentStr: currentStr + chars[i].lowercased(), chars: chars, result: &result)
                task(index: i + 1, currentStr: currentStr + chars[i].uppercased(), chars: chars, result: &result)
            } else {
                task(index: i + 1, currentStr: currentStr + String(chars[i]), chars: chars, result: &result)
            }
            
        }
        
    }
    
    func letterCasePermutation(_ s: String) -> [String] {
        var result = [String]()
        let chars = Array(s)
        
        task(index: 0, currentStr: "", chars: chars, result: &result)
        return result
    }
}