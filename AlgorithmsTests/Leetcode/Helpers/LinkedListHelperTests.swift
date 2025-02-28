//
//  LinkedListHelperTests.swift
//  AlgorithmsTests
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

import XCTest
import Algorithms

final class LinkedListHelperTests: XCTestCase {
    
    func test_toArray() {
        let head = ListNode(0)
        head.next = ListNode(1)
        head.next?.next = ListNode(2)
        head.next?.next?.next = ListNode(3)
        
        XCTAssertEqual(head.toArray(), [0, 1, 2, 3])
    }
    
    func test_toLinkedList() {
        let array: [Int] = [0, 1, 2, 3]
        let head = array.toLinkedList()
        
        XCTAssertEqual(head?.val, 0)
        XCTAssertEqual(head?.next?.val, 1)
        XCTAssertEqual(head?.next?.next?.val, 2)
        XCTAssertEqual(head?.next?.next?.next?.val, 3)
    }
}
