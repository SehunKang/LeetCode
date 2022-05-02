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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
                var memory: [Int: Int] = [:]
        var head = head
        var prev: ListNode? = ListNode(-101, head)
        var start = prev
        
        while head != nil {
            if memory[head!.val] != nil {
                prev?.next = head?.next
            } else {
                memory[head!.val] = 1
                prev = prev?.next
            }
            head = head?.next
        }
        
        return start?.next

    }
}