/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil { return false}
        
        var stack = [root?.left, root?.right]
        
        while !stack.isEmpty {
            let left = stack.removeFirst()
            let right = stack.removeFirst()
            if left == nil && right == nil { continue }
            if left?.val != right?.val { return false }
            stack.append(left?.left)
            stack.append(right?.right)
            stack.append(left?.right)
            stack.append(right?.left)
        }
        
        return true

    }
}