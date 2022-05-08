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
    private func trav(node: TreeNode?, map: inout [Int: Int], target: Int) -> Bool {
        if node == nil {
            return false
        }
        
        if map[target - node!.val] != nil {
            return true
        } else {
            map[node!.val] = 1
        }
        
        return trav(node: node?.left, map: &map, target: target) || trav(node: node?.right, map: &map, target: target)
        
        
    }
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let root = root else {
            return false
        }
        var map = [Int: Int]()
        return trav(node: root, map: &map, target: k)
    }
}