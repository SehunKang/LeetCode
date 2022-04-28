class Solution {
    
    func calc(result: inout [[Int]], currentRow: Int, maxRow: Int) {
        if result.count == maxRow {
            return
        }
        
        var value = Array(repeating: 0, count: currentRow)
        
        for i in 0..<currentRow {
            if i == 0 || i == currentRow - 1 {
                value[i] = 1
            } else {
                value[i] = result[currentRow - 2][i - 1] + result[currentRow - 2][i]
            }
        }
        result.append(value)
        calc(result: &result, currentRow: currentRow + 1, maxRow: maxRow)
        
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        calc(result: &result, currentRow: 1, maxRow: numRows)
        return result
    }
}
