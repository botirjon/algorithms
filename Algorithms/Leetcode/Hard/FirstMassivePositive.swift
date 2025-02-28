//
//  FirstMassivePositive.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

public class FirstMassivePositive: Solution {
    public func firstMissingPositive(_ nums: [Int]) -> Int {

        let nums = nums.sorted(by: <)
        let n = nums.count
        
        var k = 1

        for (i, num) in nums.enumerated() {
            if num <= 0 {
                continue
            }

            if k == num {
                k = num+1
            } else if k < num {
                return k
            }
        }

        return k
    }
}
