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
        let newNode: ListNode? = ListNode(0, head)
        var fast = newNode
        var slow = newNode
        
        for _ in 1...n {
            fast = fast?.next
        }
        var prev: ListNode?
        
        while fast != nil {
            fast = fast?.next
            prev = slow
            slow = slow?.next
            
        }
        
        prev?.next = slow?.next
        slow?.next = nil
        
        return newNode?.next
    }
}
