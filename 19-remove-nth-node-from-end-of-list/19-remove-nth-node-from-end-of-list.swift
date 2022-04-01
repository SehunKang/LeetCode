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
        var h = head
        var targetNode = head
        let result = head
        var i = 0
        
        while h != nil {
            if h?.next == nil {
                if i == 0 {
                    return nil
                } else if i < n {
                    return head?.next
                } else {
                    targetNode?.next = targetNode?.next?.next
                }
                break
            }
            i += 1
            if i > n {
                targetNode = targetNode?.next
            }
            h = h?.next
        }
        return result
    }
}
