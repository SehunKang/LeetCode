class Solution {
    
    private func rowSearch(matrix: [[Int]], target: Int) -> Int {
        var small = 0
        var large = matrix.count - 1
        
        while large >= small {
            let mid = (small + large) / 2
            if matrix[mid][0] == target {
                return mid
            }
            if matrix[mid][0] > target {
                large = mid - 1
            } else {
                small = mid + 1
            }
        }
        return small - 1
    }
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        let row = rowSearch(matrix: matrix, target: target)
        if row < 0 { return false}
        
        var small = 0
        var large = matrix[row].count - 1
        
        while large >= small {
            let mid = (small + large) / 2
            if matrix[row][mid] == target {
                return true
            }
            if matrix[row][mid] > target {
                large = mid - 1
            } else {
                small = mid + 1
            }
        }
        return false
    }
}
