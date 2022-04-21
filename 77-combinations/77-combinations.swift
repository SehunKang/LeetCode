class Solution {
    private func task(maxIndex: Int, startIndex: Int, k: Int, result: inout [[Int]], element: inout [Int]) {
        if element.count == k {
            result.append(element)
            return
        }
        if startIndex > maxIndex { return}
        
        
        for i in startIndex...maxIndex {
            element.append(i)
            task(maxIndex: maxIndex, startIndex: i + 1, k: k, result: &result, element: &element)
            element.removeLast()
        }
        
    }
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var element = [Int]()
        var result = [[Int]]()
        
        task(maxIndex: n, startIndex: 1, k: k, result: &result, element: &element)
        return result
        
    }
}
