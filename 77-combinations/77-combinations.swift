class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result: [[Int]] = []
        
        func recurse(element: [Int], start: Int) {
            if element.count == k {
                result.append(element)
                return
            }
            
            var element = element
            
            if start > n { return }
            
            for i in start...n {
                element.append(i)
                recurse(element: element, start: i + 1)
                element.removeLast()
            }
        }
        
        recurse(element: [], start: 1)
        return result
    }
}
