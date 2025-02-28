//
//  FirstMassivePositiveTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

import XCTest
import Algorithms

final class FirstMassivePositiveTests: XCTestCase {
    
    func test_firstMassivePositive() {
        let a1 = [1,2,0]
        let a2 = [3,4,-1,1]
        let a3 = [7,8,9,11,12]
        let a4 = [-5]
        
        let sut = FirstMassivePositive()
        XCTAssertEqual(sut.firstMissingPositive(a1), 3)
        XCTAssertEqual(sut.firstMissingPositive(a2), 2)
        XCTAssertEqual(sut.firstMissingPositive(a3), 1)
        XCTAssertEqual(sut.firstMissingPositive(a4), 1)
    }
}
