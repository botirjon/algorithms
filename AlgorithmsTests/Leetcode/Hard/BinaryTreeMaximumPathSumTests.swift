//
//  BinaryTreeMaximumPathSumTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 07/03/25.
//

import XCTest
import Algorithms

final class BinaryTreeMaximumPathSumTests: XCTestCase {
    func test_maxPathSum() {
        let case1 = makeCase(arr: [1,2,3], result: 6)
        let case2 = makeCase(arr: [-10,9,20,nil,nil,15,7], result: 42)
        let case3 = makeCase(arr: [1,2], result: 3)
        let case4 = makeCase(arr: [-2,-1], result: -1)
        let case5 = makeCase(arr: [1,-2,-3,1,3,-2,nil,-1], result: 3)
        let case6 = makeCase(arr: [1,2,nil,3,nil,4,nil,5], result: 15)
        let case7 = makeCase(arr: [-1,-2,10,-6,nil,-3,-6], result: 10)
        
        let sut = BinaryTreeMaximumPathSum()
        
        XCTAssertEqual(sut.maxPathSum(case1.root), case1.result)
        XCTAssertEqual(sut.maxPathSum(case2.root), case2.result)
        XCTAssertEqual(sut.maxPathSum(case3.root), case3.result)
        XCTAssertEqual(sut.maxPathSum(case4.root), case4.result)
        XCTAssertEqual(sut.maxPathSum(case5.root), case5.result)
        XCTAssertEqual(sut.maxPathSum(case6.root), case6.result)
        XCTAssertEqual(sut.maxPathSum(case7.root), case7.result)
    }
    
    // MARK: - Helpers
    private func makeCase(arr: [Int?], result: Int) -> (root: TreeNode?, result: Int) {
        return (arr.toTree(), result)
    }
}
