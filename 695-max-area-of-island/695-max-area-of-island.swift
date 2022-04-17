class Solution {
    
    private func measureIsland(size: inout Int, grid: inout [[Int]], src: [Int]){
        if grid[src[0]][src[1]] != 1 { return }
        
        grid[src[0]][src[1]] = 2
        size += 1
        
        if src[0] != 0 { measureIsland(size: &size, grid: &grid, src: [src[0] - 1, src[1]])}
        if src[0] != grid.count - 1 { measureIsland(size: &size, grid: &grid, src: [src[0] + 1, src[1]])}
        if src[1] != 0 { measureIsland(size: &size, grid: &grid, src: [src[0], src[1] - 1])}
        if src[1] != grid[0].count - 1 { measureIsland(size: &size, grid: &grid, src: [src[0], src[1] + 1])}
        
    }

    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                var islandSize = 0
                if grid[i][j] == 1 {
                    measureIsland(size: &islandSize, grid: &grid, src: [i, j])
                    result = max(result, islandSize)
                }
            }
        }
        
        return result
    }
}
