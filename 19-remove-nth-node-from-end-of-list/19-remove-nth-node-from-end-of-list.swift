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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var start = ListNode(0, head)
        var slow: ListNode? = start
        var fast: ListNode? = start
        
        for _ in 1...n {
            fast = fast?.next
        }
        
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        slow?.next = slow?.next?.next
        return start.next
    }
}
