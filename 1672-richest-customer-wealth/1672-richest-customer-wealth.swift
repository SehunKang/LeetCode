class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { $0.reduce(0) { $0 + $1 }}.sorted {$0 > $1}.first!
    }
}