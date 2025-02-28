//
//  MinimumWindowSubstringTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 27/02/25.
//

import XCTest
import Algorithms

final class MinimumWindowSubstringTests: XCTestCase {
    
    func test_minWindow() {
        let case1 = makeCase(s: "ADOBECODEBANC", t: "ABC", r: "BANC")
        let case2 = makeCase(s: "a", t: "a", r: "a")
        let case3 = makeCase(s: "a", t: "aa", r: "")
        let case4 = makeCase(s: "aa", t: "aa", r: "aa")
        let case5 = makeCase(s: "abc", t: "bc", r: "bc")
        
        let sut = MinimumWindowSubstring()
        XCTAssertEqual(sut.minWindow(case1.s, case1.t), case1.r)
        XCTAssertEqual(sut.minWindow(case2.s, case2.t), case2.r)
        XCTAssertEqual(sut.minWindow(case3.s, case3.t), case3.r)
        XCTAssertEqual(sut.minWindow(case4.s, case4.t), case4.r)
        XCTAssertEqual(sut.minWindow(case5.s, case5.t), case5.r)
    }
    
    // MARK: - Helpers
    private func makeCase(s: String, t: String, r: String = "") -> (s: String, t: String, r: String) {
        return (s: s, t: t, r: r)
    }
}
