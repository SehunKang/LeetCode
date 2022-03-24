class Solution {
    
    let roman = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]

    func romanToInt(_ s: String) -> Int {
        var prev = 0
        var result = 0
        
        for i in s {
            let val = roman[i.description]!
            if val > prev {
                result -= prev
                result += -(prev - val)
            } else {
                result += val
            }
            prev = val
        }
        return result
    }
}

let c = Solution()

c.romanToInt("MCMXCIV")
