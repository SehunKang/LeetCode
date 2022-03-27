class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var num = num
        var result = 0
        while num != 0 {
            num = num % 2 == 0 ? num / 2 : num - 1
            result += 1
        }
        return result
    }
}