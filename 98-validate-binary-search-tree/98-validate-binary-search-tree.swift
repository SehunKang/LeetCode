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
    func isValidBST(_ root: TreeNode?) -> Bool {
        if root == nil { return true}
        var root = root
        var stack = [TreeNode?]()
        var pre: TreeNode? = nil
        
        while !stack.isEmpty || root != nil {
            while root != nil {
                stack.append(root)
                root = root?.left
            }
            root = stack.removeLast()
            if pre != nil && root!.val <= pre!.val {
                return false
            }
            pre = root
            root = root?.right
        }
        return true
    }
}