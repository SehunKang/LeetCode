class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for char in s {
            if char == "(" {
                stack.append(")")
            } else if char == "{" {
                stack.append("}")
            } else if char == "[" {
                stack.append("]")
            } else {
                if stack.isEmpty || stack.removeLast() != char { return false }
            }
        }
        return stack.isEmpty
    }
}
