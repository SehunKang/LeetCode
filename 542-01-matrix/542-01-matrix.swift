class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        var mat = mat
        let columnLength = mat.count
        let rowLength = mat[0].count
        if rowLength == 0 { return mat }
        
        for i in 0...columnLength - 1 {
            for j in 0...rowLength - 1 {
                if mat[i][j] != 0 {
                    var top = columnLength + rowLength
                    var left = columnLength + rowLength
                    if i != 0 {
                        top = mat[i - 1][j]
                    }
                    if j != 0 {
                        left = mat[i][j - 1]
                    }
                    mat[i][j] = min(top, left) + 1
                }
            }
        }
        for i in 0...columnLength - 1 {
            for j in 0...rowLength - 1 {
                let i = columnLength - 1 - i
                let j = rowLength - 1 - j
                if i < columnLength - 1 {
                    mat[i][j] = min(mat[i][j], mat[i + 1][j] + 1)
                }
                if j < rowLength - 1 {
                    mat[i][j] = min(mat[i][j], mat[i][j + 1] + 1)
                }
            }
        }
        return mat
    }
}
