class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0

        if prices.count == 1 {
            return result
        }
        
        var prev = prices[0]
        
        for i in 1...prices.count - 1 {
            if prices[i] < prev {
                prev = prices[i]
                continue
            } else {
                result = max(result, prices[i] - prev)
            }
        }
        return result
    }
}