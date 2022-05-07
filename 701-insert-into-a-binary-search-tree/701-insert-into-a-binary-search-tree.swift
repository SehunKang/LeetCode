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
    private func addNode(node: TreeNode?, val: Int) {
        guard let node = node else {
            return
        }
        if node.val > val {
            if node.left != nil {
                addNode(node: node.left, val: val)
            } else {
                node.left = TreeNode(val)
            }
        } else {
            if node.right != nil {
                addNode(node: node.right, val: val)
            } else {
                node.right = TreeNode(val)
            }
        }

        
    }
    
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return TreeNode(val)
        }
        addNode(node: root, val: val)
        return root
    }
}