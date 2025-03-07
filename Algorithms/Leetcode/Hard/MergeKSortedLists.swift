//
//  MergeKSortedLists.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 25/02/25.
//

public final class MergeKSortedLists: LeetcodeSolution {
    
    public func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard lists.count > 1 else {
            return lists.first ?? nil
        }
        
        var newLists: [ListNode?] = []
        
        var i = 0
        var j = lists.count-1
        
        while i <= j {
            if i == j {
                newLists.append(lists[i])
                break
            }
            let merged = mergeTwoLists(one: lists[i], two: lists[j])
            newLists.append(merged)
            i += 1
            j -= 1
        }
        
        return mergeKLists(newLists)
    }
    
    public func mergeKLists2(_ lists: [ListNode?]) -> ListNode? {
        guard lists.count > 1 else {
            return lists.first ?? nil
        }
        
        var newLists: [ListNode?] = []
        
        var i = 0
        var j = 1
        let n = lists.count
        
        while i < j && j < n {
            let merged = mergeTwoLists(one: lists[i], two: lists[j])
            newLists.append(merged)
            i += 2
            j += 2
            
            if i == n-1 {
                newLists.append(lists[i])
                break
            }
        }
        
        return mergeKLists(newLists)
    }
    
    public func mergeKLists3(_ lists: [ListNode?]) -> ListNode? {
        var numbers = [Int]()
        
        for list in lists {
            var node = list
            while let n = node {
                numbers.append(n.val)
                node = n.next
            }
        }
        
        numbers.sort(by: <)
        
        var head: ListNode?
        var current: ListNode?
        for number in numbers {
            if head == nil {
                head = ListNode(number)
                current = head
            } else {
                current?.next = ListNode(number)
                current = current?.next
            }
        }
        
        return head
    }

    public func mergeTwoLists(one: ListNode?, two: ListNode?) -> ListNode? {
        if one == nil {
            return two
        }
        
        if two == nil {
            return one
        }
        
        let head = ListNode(0)
        var current = head
        var currentOne = one
        var currentTwo = two
        
        while let node1 = currentOne, let node2 = currentTwo {
            if node1.val < node2.val {
                current.next = node1
                currentOne = node1.next
            } else {
                current.next = node2
                currentTwo = node2.next
            }
            current = current.next!
        }
        
        current.next = currentOne ?? currentTwo
        
        return head.next
    }
}
