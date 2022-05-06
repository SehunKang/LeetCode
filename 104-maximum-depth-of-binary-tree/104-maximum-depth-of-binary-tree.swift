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
    func maxDepth(_ root: TreeNode?) -> Int {
        var result = 0
        if root == nil { return result }
        var stack = [root]
        
        while !stack.isEmpty {
            let count = stack.count
            result += 1
            
            for _ in 1...count {
                let node = stack.removeFirst()
                if node?.left != nil {
                    stack.append(node?.left)
                }
                if node?.right != nil {
                    stack.append(node?.right)
                }
            }
        }
        return result
    }
}