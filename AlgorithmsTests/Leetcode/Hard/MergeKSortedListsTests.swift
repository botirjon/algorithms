//
//  MergeKSortedListsTests.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

import XCTest
import Algorithms

final class MergeKSortedListsTests: XCTestCase {
    
    func test_mergeTwoSortedLists() {
        let sut = MergeKSortedLists()
        
        let list1: [Int] = [1,3,5]
        let list2: [Int] = [1,2,4,6]
        
        let expectedArray = [1, 1, 2, 3, 4, 5, 6]
        let mergedArray = sut.mergeTwoLists(one: list1.toLinkedList(), two: list2.toLinkedList())?.toArray() ?? []
        
        XCTAssertEqual(mergedArray, expectedArray)
    }
    
    func test_mergeKSortedLists() {
        let sut = MergeKSortedLists()
        let input: [[Int]] = [[1,4,5],[1,3,4],[2,6]]
        let lists: [ListNode?] = input.map {
            return $0.toLinkedList()
        }
        
        let merged = sut.mergeKLists(lists)?.toArray() ?? []
        
        XCTAssertEqual(merged, [1,1,2,3,4,4,5,6])
    }
    
    func test_mergeKSortedLists2() {
        let sut = MergeKSortedLists()
        let input: [[Int]] = [[1,4,5],[1,3,4],[2,6]]
        let lists: [ListNode?] = input.map {
            return $0.toLinkedList()
        }
        
        let merged = sut.mergeKLists2(lists)?.toArray() ?? []
        
        XCTAssertEqual(merged, [1,1,2,3,4,4,5,6])
    }
}
