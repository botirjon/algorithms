//
//  AudibleBookstoreTests.swift
//  AlgorithmsTests
//
//  Created by MAC-Nasridinov-B on 24/02/25.
//

import XCTest
import Algorithms

private func groupActions(_ actions: [String]) -> [[String]] {
    var result = [[String]]()
    var temp = [String]()
    for (index, action) in actions.enumerated() {
        if index != 0 && index % 2 == 0 {
            result.append(temp)
            temp = [String]()
        } else {
            temp.append(action)
        }
    }
    return result
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

final class AudibleBookstoreTests: XCTestCase {
    
    func test_countGroups() {
        let given = ["Men", "Sen", "U"]
        
        let result = given.chunked(into: 2)
        
        XCTAssertEqual(result, [["Men", "Sen"], ["U"]])
    }
}
