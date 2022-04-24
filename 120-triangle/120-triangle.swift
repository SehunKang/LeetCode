class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        let depth = triangle.count
        
        var last = triangle.last!
        for i in stride(from: depth - 2, through: 0, by: -1) {
            for j in 0...i {
                last[j] = min(last[j], last[j + 1]) + triangle[i][j]
            }
        }
        return last[0]
    }
}

