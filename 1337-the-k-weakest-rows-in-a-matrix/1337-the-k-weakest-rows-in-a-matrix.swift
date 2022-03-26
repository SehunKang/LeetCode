class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        for i in 0..<mat.count {
            dict[i] = mat[i].reduce(0) {$0 + $1}
        }
        let sortedDictionary = dict.sorted {
            if $0.1 == $1.1 {
                return $0.0 < $1.0
            }
            return $0.1 < $1.1
        }
        for (key, _) in sortedDictionary {
            result.append(key)
        }
        return Array(result[0..<k])
    }
}
