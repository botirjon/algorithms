//
//  LargestRectangleInHistogram.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//

public struct Stack<Element> {
    private(set) var elements: [Element] = []
    
    public init(elements: [Element] = []) {
        self.elements = elements
    }
    
    mutating public func push(_ element: Element) {
        elements.append(element)
    }
    
    @discardableResult
    mutating public func pop() -> Element? {
        return elements.popLast()
    }
    
    public func peek() -> Element? {
        return elements.last
    }
    
    public var isEmpty: Bool {
        elements.isEmpty
    }
}

public final class LargestRectangleInHistogram: LeetcodeSolution {
    public func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        var maxArea = 0
        var stack = Array<(Int, Int)>()
                
        for (i, h) in heights.enumerated() {
            let top = stack.last
            if stack.isEmpty {
                stack.append((i, h))
            } else if h >= top!.1 {
                stack.append((i, h))
            } else {
                var start = i
                while !stack.isEmpty {
                    let top = stack.last!
                    if h <= top.1 {
                        maxArea = max(maxArea, (top.1 * (i - top.0)))
                        start = top.0
                        _ = stack.popLast()
                    } else {
                        stack.append((start, h))
                        break
                    }
                }
                
                if stack.isEmpty {
                    stack.append((start, h))
                }
            }
        }
                
        while !stack.isEmpty {
            let top = stack.popLast()!
            maxArea = max(maxArea, top.1 * (n - top.0))
        }
                
        return maxArea
    }
}
