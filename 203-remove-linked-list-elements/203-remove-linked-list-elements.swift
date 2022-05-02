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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var prev: ListNode? = ListNode(0, head)
        var head = head
        var start = prev
        
        while head != nil {
            let tmp = head
            if head?.val == val {
                prev?.next = head?.next
            } else {
                prev = tmp
            }
            head = head?.next
        }
        
        return start?.next
    }
}