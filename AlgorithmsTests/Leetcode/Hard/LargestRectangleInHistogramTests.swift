//
//  LargestRectangleInHistogramTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//

import XCTest
import Algorithms

final class LargestRectangleInHistogramTests: XCTestCase {
    func test_largestRectangleArea() {
        let case1 = makeCase(heights: [2,1,5,6,2,3], expectedMaxArea: 10)
        let case2 = makeCase(heights: [2,4], expectedMaxArea: 4)
        let case3 = makeCase(heights: [2,1,2], expectedMaxArea: 3)
        
        let sut = LargestRectangleInHistogram()
        
        XCTAssertEqual(sut.largestRectangleArea(case1.heights), case1.expectedMaxArea)
        XCTAssertEqual(sut.largestRectangleArea(case2.heights), case2.expectedMaxArea)
        XCTAssertEqual(sut.largestRectangleArea(case3.heights), case3.expectedMaxArea)
    }
    
    // MARK: - Helpers
    private func makeCase(heights: [Int], expectedMaxArea: Int) -> (heights: [Int], expectedMaxArea: Int) {
        return (heights, expectedMaxArea)
    }
}
