/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var low = 0
        var high = n
        
        while high - low > 1 {
            let mid = high - ((high - low) / 2)
            if isBadVersion(mid) {
                high = mid
            } else {
                low = mid
            }
        }
        
        return high
    }
}
