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
    private func dfs(_ root: Node?) {
        if root == nil {return}
        
        if let left = root?.left {
            left.next = root?.right
            dfs(left)
        }
        
        if let right = root?.right {
            right.next = root?.next?.left
            dfs(right)
        }
    }
    
    func connect(_ root: Node?) -> Node? {
        dfs(root)
        return root
    }
}
