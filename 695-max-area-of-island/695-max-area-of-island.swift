class Solution {

    private func search(grid: inout [[Int]], target: [Int], size: inout Int) {
        if target[0] < 0 || target[0] >= grid.count
            || target[1] < 0 || target[1] >= grid[0].count { return }
        if grid[target[0]][target[1]] != 1 { return }

        if grid[target[0]][target[1]] == 1 {
            grid[target[0]][target[1]] = 2
            size += 1
        }
        search(grid: &grid, target: [target[0] - 1, target[1]], size: &size)
        search(grid: &grid, target: [target[0] + 1, target[1]], size: &size)
        search(grid: &grid, target: [target[0], target[1] - 1], size: &size)
        search(grid: &grid, target: [target[0], target[1] + 1], size: &size)


    }

    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = 0
        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == 1 {
                    var size = 0
                    search(grid: &grid, target: [i, j], size: &size)
                    result = size > result ? size : result
                }
            }
        }
        return result
    }
}
