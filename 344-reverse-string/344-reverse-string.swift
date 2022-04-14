class Solution {
    func reverseString(_ s: inout [Character]) {
        if s.count == 1 {return}
        for i in 0...(s.count / 2) - 1 {
            let temp = s[i]
            s[i] = s[s.count - 1 - i]
            s[s.count - 1 - i] = temp
        }
    }
}
