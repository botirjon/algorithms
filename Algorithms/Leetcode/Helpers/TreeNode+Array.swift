//
//  TreeNode+Array.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 07/03/25.
//


public extension TreeNode {
    func serialize() -> [Int?] {
        let root = self
        
        var result: [Int?] = []
        var queue: [TreeNode?] = [root]
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            
            if let node = node {
                result.append(node.val)
                queue.append(node.left)
                queue.append(node.right)
            } else {
                result.append(nil)
            }
        }
        
        // Remove trailing `nil` values to optimize the output
        while let last = result.last, last == nil {
            result.removeLast()
        }
        
        return result
    }
}


public extension Array where Element == Int? {
    func toTree() -> TreeNode? {
        let data = self
        guard !data.isEmpty, let firstValue = data[0] else { return nil }
        
        let root = TreeNode(firstValue)
        var queue: [TreeNode] = [root]
        var index = 1
        
        while index < data.count {
            let parent = queue.removeFirst()
            
            if index < data.count, let leftValue = data[index] {
                parent.left = TreeNode(leftValue)
                queue.append(parent.left!)
            }
            index += 1
            
            if index < data.count, let rightValue = data[index] {
                parent.right = TreeNode(rightValue)
                queue.append(parent.right!)
            }
            index += 1
        }
        
        return root
    }
}
