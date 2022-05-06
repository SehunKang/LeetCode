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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
         var result = [[Int]]()
        if root == nil {return result}
        var stack = [TreeNode?]()
        
        stack.append(root)
        
        while !stack.isEmpty {
            var level = [Int]()
            let count = stack.count
            
            for _ in 1...count {
                guard let node = stack.removeFirst() else {break}
                level.append(node.val)
                if node.left != nil {
                    stack.append(node.left)
                }
                if node.right != nil {
                    stack.append(node.right)
                }
            }
            result.append(level)
        }
        
        return result

    }
}