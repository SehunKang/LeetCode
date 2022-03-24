class Solution {
    func romanToInt(_ s: String) -> Int {
        var totalNum = 0
        let charArray: [String] = stringToArray(s)
        var index = 0
        
        while index < charArray.count {
            let roman = charArray[index]
            if roman == "I" {
                if index + 1 < charArray.count {
                    if charArray[index + 1] == "V" {
                        totalNum += 4
                        index += 2
                        continue
                    } else if charArray[index + 1] == "X" {
                        totalNum += 9
                        index += 2
                        continue
                    }
                }
                totalNum += 1
            } else if roman == "V" {
                totalNum += 5
            } else if roman == "X" {
                if index + 1 < charArray.count {
                    if charArray[index + 1] == "L" {
                        totalNum += 40
                        index += 2
                        continue
                    } else if charArray[index + 1] == "C" {
                        totalNum += 90
                        index += 2
                        continue
                    }
                }
                totalNum += 10
            } else if roman == "L" {
                totalNum += 50
            } else if roman == "C" {
                if index + 1 < charArray.count {
                    
                    if charArray[index + 1] == "D" {
                        totalNum += 400
                        index += 2
                        continue
                    } else if charArray[index + 1] == "M" {
                        totalNum += 900
                        index += 2
                        continue
                    }
                }
                totalNum += 100
            } else if roman == "D" {
                totalNum += 500
            } else if roman == "M" {
                totalNum += 1000
            }
                index += 1
        }
        return totalNum
    }
    
    func stringToArray(_ s: String) -> [String] {
        var charArray: [String] = []
        for i in s {
            charArray.append(i.description)
        }
        return charArray
    }
}