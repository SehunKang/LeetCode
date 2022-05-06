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
    private func invert(root: TreeNode?) {
        if root == nil { return }
        let tmp = root?.left
        root?.left = root?.right
        root?.right = tmp
        invert(root: root?.left)
        invert(root: root?.right)
    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        var root = root
        invert(root: root)
        return root
    }
}