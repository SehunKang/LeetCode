class Solution {
    private func rowValid(row: Int, column: Int, board: [[Character]]) -> Bool {
        let char = board[row][column]
        
        for i in 0...8 {
            if i == row {
                continue
            }
            if board[i][column] == char {
                return false
            }
        }
        return true
        
    }
    
    private func columnValid(row: Int, column: Int, board: [[Character]]) -> Bool {
        let char = board[row][column]
        
        for i in 0...8 {
            if i == column {
                continue
            }
            if board[row][i] == char {
                return false
            }
        }
        return true
    }
    
    private func squareValid(row: Int, column: Int, board: [[Character]]) -> Bool {
        let char = board[row][column]
        let area = [[0,1,2], [3,4,5], [6,7,8]]
        
        for i in area[row / 3] {
            for j in area[column / 3] {
                if i == row && j == column { continue }
                if board[i][j] == char {
                    return false
                }
            }
        }
        return true
    }
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        for i in board.indices {
            for j in board[0].indices {
                if !board[i][j].isNumber {
                    continue
                }
                if rowValid(row: i, column: j, board: board) == false ||
                    columnValid(row: i, column: j, board: board) == false ||
                    squareValid(row: i, column: j, board: board) == false {
                    return false
                }
            }
        }
        return true
    }
}
