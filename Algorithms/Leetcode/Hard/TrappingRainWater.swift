//
//  TrappingRainWater.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

public final class TrappingRainWater: LeetcodeSolution {
    
    public func trap(_ height: [Int]) -> Int {
        let n = height.count
        
        guard n > 1 else { return 0 }
        
        var maxLeft = [Int](repeating: 0, count: n)
        var maxRight = [Int](repeating: 0, count: n)
        
        var maxLeftValue = 0
        for i in 1..<n {
            maxLeftValue = max(height[i-1], maxLeftValue)
            maxLeft[i] = maxLeftValue
        }
        
        var maxRightValue = 0
        for i in 1..<n {
            let j = n-i-1
            maxRightValue = max(maxRightValue, height[j+1])
            maxRight[n-i-1] = maxRightValue
        }
        
        var sum = 0
        
        for i in 0..<n {
            sum += max(0, min(maxLeft[i], maxRight[i]) - height[i])
        }
        
        return sum
    }
}
