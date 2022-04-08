class Solution {
    private func recurse( result: inout [[Int]], element: inout [Int], start: Int, n: Int, k: Int) {
        if k == 0 {
            result.append(element)
            return
        }
        
        if start > n {
            return
        }
        
        
        for i in start...n {
            element.append(i)
            recurse(result: &result, element: &element, start: i + 1, n: n, k: k - 1)
            element.removeLast()
        }
        
    }
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result: [[Int]] = []
        var element: [Int] = []
        
        recurse(result: &result, element: &element, start: 1, n: n, k: k)
        return result
    }
}
