class Solution {
    private func dfs(result: inout [String], chars: inout [String], index: Int) {
        if index == chars.count {
            result.append(chars.joined())
            return
        }
        
        if Character(chars[index]).isNumber {
            dfs(result: &result, chars: &chars, index: index + 1)
            return
        }
        
        chars[index] = chars[index].lowercased()
        dfs(result: &result, chars: &chars, index: index + 1)
        
        chars[index] = chars[index].uppercased()
        dfs(result: &result, chars: &chars, index: index + 1)
    }
    
    func letterCasePermutation(_ S: String) -> [String] {
        var result = [String]()
        var chars = S.map { $0.description }
        
        dfs(result: &result, chars: &chars, index: 0)
        
        return result
        
    }
}
