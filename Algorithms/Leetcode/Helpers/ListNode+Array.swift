//
//  ListNode+Array.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

public extension ListNode {
    func toArray() -> [Int] {
        var current: ListNode? = self
        var result: [Int] = []
        
        while current != nil {
            result.append(current!.val)
            current = current?.next
        }
        
        return result
    }
}


public extension Array where Element == Int {
    func toLinkedList() -> ListNode? {
        guard !isEmpty else { return nil }
        var head: ListNode?
        var current: ListNode?
        
        for value in self {
            let newNode = ListNode(value)
            if head == nil {
                head = newNode
                current = head
            } else {
                current?.next = newNode
                current = newNode
            }
        }
        
        return head
    }
}
