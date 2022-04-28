class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let flat = mat.flatMap {$0}
        if flat.count != r * c { return mat }
        let column = Array(repeating: 0, count: c)
        var result = Array(repeating: column, count: r)
        
        var flatIndex = 0
        
        for i in 0..<r {
            for j in 0..<c {
                result[i][j] = flat[flatIndex]
                flatIndex += 1
            }
        }
        
        return result
    }
}
