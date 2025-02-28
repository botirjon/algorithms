//
//  WildcardMatchingTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 27/02/25.
//

import XCTest
import Algorithms

final class WildcardMatchingTests: XCTestCase {
    
    func test_isMatch() {
        let cases = [
            ("aa", "a", false),
            ("aa", "*", true),
            ("cb", "?a", false),
            ("adceb", "*a*b", true),
            ("", "******", true),
            ("abcabczzzde", "*abc???de*", true)
        ]
        
        let sut = WildcardMatching()
        
        cases.forEach { (s, p, isMatch) in
            XCTAssertEqual(sut.isMatch(s, p), isMatch, "\(s), \(p) failed")
        }
    }
}
