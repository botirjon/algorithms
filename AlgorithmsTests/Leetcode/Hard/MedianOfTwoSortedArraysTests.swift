//
//  MedianOfTwoSortedArraysTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//

import XCTest
import Algorithms

final class MedianOfTwoSortedArraysTests: XCTestCase {
    func test_findMedianSortedArrays() {
        let case1 = makeCase(nums1: [1,3], nums2: [2], expected: 2.0)
        let case2 = makeCase(nums1: [1,2], nums2: [3,4], expected: 2.5)
        
        let sut = MedianOfTwoSortedArrays()
        
        XCTAssertEqual(sut.findMedianSortedArrays(case1.nums1, case1.nums2), case1.expected)
        XCTAssertEqual(sut.findMedianSortedArrays(case2.nums1, case2.nums2), case2.expected)
    }
    
    
    // MARK: - Helpers
    private func makeCase(nums1: [Int], nums2: [Int], expected: Double) -> (nums1: [Int], nums2: [Int], expected: Double) {
        return (nums1, nums2, expected)
    }
}
