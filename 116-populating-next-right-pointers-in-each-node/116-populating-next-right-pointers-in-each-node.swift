/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func connect(_ root: Node?) -> Node? {
        if root == nil { return root}
        if let left = root?.left {
            left.next = root?.right
            connect(left)
        }
        
        if let right = root?.right {
            right.next = root?.next?.left
            connect(right)
        }

        return root
    }
}