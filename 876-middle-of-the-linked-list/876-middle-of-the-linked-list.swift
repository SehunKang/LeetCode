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
    func middleNode(_ head: ListNode?) -> ListNode? {
        let newNode: ListNode? = ListNode(0, head)
        var slow = newNode
        var fast = newNode
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}

