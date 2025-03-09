//
//  TreeHelperTests.swift
//  AlgorithmsTests
//
//  Created by MAC-Nasridinov-B on 08/03/25.
//

import Foundation
import XCTest
import Algorithms

final class TreeHelperTests: XCTestCase {
    
    func test_serialize() {
        let root = TreeNode(10)
        root.left = TreeNode(5)
        root.right = TreeNode(15)
        root.left?.left = TreeNode(3)
        root.left?.right = TreeNode(7)
        
        XCTAssertEqual(root.serialize(), [10, 5, 15, 3, 7])
    }
    
    func test_toTree() {
        let arr: [Int?] = [-10,9,20,nil,nil,15,7]
        let root = arr.toTree()
        
        XCTAssertEqual(root?.serialize(), arr)
    }
}
