/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        var vals: [Int] = []

        var head = head
        
        while head != nil {
            vals.append((head?.val)!)
            head = head?.next
        }
        for i in 0..<(vals.count / 2) {
            if vals[i] != vals[(vals.count - 1) - i] {
                return false
            }
        }
        return true
    }
    
}
