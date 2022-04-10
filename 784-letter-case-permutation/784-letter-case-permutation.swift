class Solution {
    func letterCasePermutation(_ S: String) -> [String] {
        var result = [S]
        let String = S.map { $0 }
        
        for i in 0..<S.count {
            if String[i].isNumber { continue }
            let size = result.count
            for j in 0..<size {
                var currentString = result.first!.map { $0.description }
                result.removeFirst()
                
                currentString[i] = currentString[i].uppercased()
                result.append(currentString.joined())
                
                currentString[i] = currentString[i].lowercased()
                result.append(currentString.joined())
            }
        }
        
        return result
    }
}
