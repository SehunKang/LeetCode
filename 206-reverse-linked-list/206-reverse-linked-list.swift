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
    private func reverse(head: ListNode?, back: ListNode?) -> ListNode? {
        if head == nil {
            return back
        }
        let new = head?.next
        head?.next = back
        return reverse(head: new, back: head)
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        return reverse(head: head, back: nil)
    }
}