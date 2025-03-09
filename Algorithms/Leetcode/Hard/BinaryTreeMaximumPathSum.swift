//
//  BinaryTreeMaximumPathSum.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 07/03/25.
//

public final class BinaryTreeMaximumPathSum: LeetcodeSolution {
    public func maxPathSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var maxSum = root.val
        
        maxSum = max(dfs(root: root, maxSum: &maxSum), maxSum)
        
        return maxSum
    }
    
    func dfs(root: TreeNode?, maxSum: inout Int) -> Int {
        guard let root = root else {
            return 0
        }
        
        if root.left == nil && root.right == nil {
            maxSum = max(maxSum, root.val)
            return root.val
        }
        
        let leftSum = dfs(root: root.left, maxSum: &maxSum)
        let rightSum = dfs(root: root.right, maxSum: &maxSum)
        
        maxSum = max(maxSum, root.val + leftSum + rightSum)
        
        var sum = root.val
        sum = max(leftSum + root.val, sum)
        sum = max(rightSum + root.val, sum)
        
        maxSum = max(maxSum, sum)
        return sum
    }
}

public final class BinaryTreeMaximumPathSum2: LeetcodeSolution {
    var maxSum = Int.min

    public func maxPathSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        maxPathSumHelper(root)
        return maxSum
    }

    @discardableResult
    public func maxPathSumHelper(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        let val = node.val
        let left = max(maxPathSumHelper(node.left), 0)
        let right = max(maxPathSumHelper(node.right), 0)
        let pathSum = left + right + val

        maxSum = max(maxSum, pathSum)

        return max(left, right) + val
    }
}
