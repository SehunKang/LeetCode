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
    private func traverse(result: inout [Int], node: TreeNode?) {
        guard let node = node else { return }
        
        traverse(result: &result, node: node.left)

        traverse(result: &result, node: node.right)
                        
        result.append(node.val)

    }
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        traverse(result: &result, node: root)
        return result
    }
}