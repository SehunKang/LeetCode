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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
        var newHead: ListNode? = nil
        
        while head != nil {
            let bufferForNextHead = head?.next
            head?.next = newHead
            newHead = head
            head = bufferForNextHead
        }
        
        return newHead
    }
}