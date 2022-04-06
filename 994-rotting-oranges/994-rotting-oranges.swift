class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = -1
        var q: [[Int]] = []
        var fresh = 0
        
        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == 2 {
                    q.append([i, j])
                } else if grid[i][j] == 1 {
                    fresh += 1
                }
            }
        }
        if q.isEmpty && fresh == 0 { return 0}
        if fresh == 0 { return 0}
        
        while !q.isEmpty {
            result += 1
            let size = q.count
            print(q)
            for _ in 1...size {
                let target = q.first!
                q.removeFirst()
                if target[0] > 0 {
                    if grid[target[0] - 1][target[1]] == 1 {
                        q.append([target[0] - 1, target[1]])
                        grid[target[0] - 1][target[1]] = 2
                        fresh -= 1
                    }
                }
                if target[0] < grid.count - 1 {
                    if grid[target[0] + 1][target[1]] == 1 {
                        q.append([target[0] + 1, target[1]])
                        grid[target[0] + 1][target[1]] = 2
                        fresh -= 1
                    }
                    
                }
                if target[1] > 0 {
                    if grid[target[0]][target[1] - 1] == 1 {
                        q.append([target[0], target[1] - 1])
                        grid[target[0]][target[1] - 1] = 2
                        fresh -= 1
                    }
                }
                if target[1] < grid[0].count - 1 {
                    if grid[target[0]][target[1] + 1] == 1 {
                        q.append([target[0], target[1] + 1])
                        grid[target[0]][target[1] + 1] = 2
                        fresh -= 1
                    }
                }
            }
        }
        return fresh == 0 ? result : -1
    }
}
