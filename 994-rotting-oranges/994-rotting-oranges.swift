class Solution {
    private func getRotten(grid: inout [[Int]], queue: inout [[Int]], x: Int, y: Int, fresh: inout Int) {
        if x < 0 || y < 0 || x > grid.count - 1 || y > grid[0].count - 1 { return }
        
        if grid[x][y] == 1 {
            grid[x][y] = 2
            fresh -= 1
            queue.append([x, y])
        }
    }
    
    func orangesRotting(_ grid: [[Int]]) -> Int {
        let xy = [0, 1, 0, -1, 0]
        var grid = grid
        var fresh = 0
        var result = -1
        var queue: [[Int]] = []
        
        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == 2 {
                    queue.append([i, j])
                }
                if grid[i][j] == 1 {
                    fresh += 1
                }
            }
        }
        
        if fresh == 0 { return 0 }
        
        while !queue.isEmpty {
            result += 1
            let count = queue.count
            for _ in 0..<count {
                let target = queue.first!
                queue.removeFirst()
                for i in 0...3 {
                    getRotten(grid: &grid, queue: &queue, x: target[0] + xy[i], y: target[1] + xy[i + 1], fresh: &fresh)
                }
            }
        }
        return fresh != 0 ? -1 : result
    }
}
