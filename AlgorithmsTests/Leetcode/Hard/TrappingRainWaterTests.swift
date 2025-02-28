//
//  TrappingRainWaterTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

import XCTest
import Algorithms

final class TrappingRainWaterTests: XCTestCase {
    
    
    func test_trap() {
        let h1 = [0,1,0,2,1,0,1,3,2,1,2,1]
        let h2 = [4,2,0,3,2,5]
        
        let sut = TrappingRainWater()
        
        XCTAssertEqual(sut.trap(h1), 6)
        XCTAssertEqual(sut.trap(h2), 9)
    }
}
