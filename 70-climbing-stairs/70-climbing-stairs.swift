class Solution {

    func climbStairs(_ n: Int) -> Int {
        
        if n == 1 {return 1}
        
        var arr: [Int] = Array(repeating: 0, count: n + 1)
        
        arr[0] = 1
        arr[1] = 1
        
        for i in 2...n {
            arr[i] = arr[i - 2] + arr[i - 1]
        }
        return arr[n]

    }
}
