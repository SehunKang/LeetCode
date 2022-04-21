class Solution {
    private func task(index: Int ,currentStr: String, chars: [Character], result: inout [String]) {
        
        if index == chars.count {
            result.append(currentStr)
            return
        }
        
        
        if chars[index].isLetter {
            task(index: index + 1, currentStr: currentStr + chars[index].lowercased(), chars: chars, result: &result)
            task(index: index + 1, currentStr: currentStr + chars[index].uppercased(), chars: chars, result: &result)
        } else {
            task(index: index + 1, currentStr: currentStr + String(chars[index]), chars: chars, result: &result)
        }
        
        
    }
    
    func letterCasePermutation(_ s: String) -> [String] {
        var result = [String]()
        let chars = Array(s)
        
        task(index: 0, currentStr: "", chars: chars, result: &result)
        return result
    }
}