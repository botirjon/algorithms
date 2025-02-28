//
//  RegularExpressionMatchingTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//

import XCTest
import Algorithms

final class RegularExpressionMatchingTests: XCTestCase {
    
    func test_isMatch() {
        let case1 = makeCase(s: "aa", p: "a", r: false)
        let case2 = makeCase(s: "aa", p: "a*", r: true)
        let case3 = makeCase(s: "ab", p: ".*", r: true)
        
        let sut = RegularExpressionMatching()
        
        XCTAssertEqual(sut.isMatch(case1.s, case1.p), case1.r)
        XCTAssertEqual(sut.isMatch(case2.s, case2.p), case2.r)
        XCTAssertEqual(sut.isMatch(case3.s, case3.p), case3.r)
    }
    
    // MARK: - Helpers
    private func makeCase(s: String, p: String, r: Bool) -> (s: String, p: String, r: Bool) {
        return (s,p,r)
    }
}
