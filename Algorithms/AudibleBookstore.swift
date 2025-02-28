//
//  AudibleBookstore.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 24/02/25.
//

public class AudibleBookstore {
    
    public init() {}
    
    public func countGroups(related: [String]) -> Int {
        
        var pairs = [(Int, Int)]()
        let n = related.count
        for i in 0..<n {
            let a = Array(related[i])
            
            for j in 0..<a.count {
                if a[j] == "1" {
                    // this means j received a book from i
                    // they are related
                    pairs.append((i, j))
                }
            }
        }
        
        var graphs = [Int: Set<Int>]()
        
        for (s, r) in pairs {
            graphs[s, default: []].insert(r)
            graphs[r, default: []].insert(s)
        }
        
        var visited = Set<Int>()
        var groups = 0
        
        for person in graphs.keys {
            if !visited.contains(person) {
                visited.insert(person)
//                dfs(person, graphs: &graphs, visited: &visited)
                
                var stack = [person]
                while !stack.isEmpty {
                    let current = stack.removeLast()
                    for neighbor in graphs[current, default: []] {
                        if !visited.contains(neighbor) {
                            visited.insert(neighbor)
                            stack.append(neighbor)
                        }
                    }
                }
                
                groups += 1
            }
        }
        
        return groups
    }

    func dfs(_ node: Int, graphs: inout [Int: Set<Int>], visited: inout Set<Int>) {
        var stack = [node]
        while !stack.isEmpty {
            let current = stack.removeLast()
            for neighbor in graphs[current, default: []] {
                if !visited.contains(neighbor) {
                    visited.insert(neighbor)
                    stack.append(neighbor)
                }
            }
        }
    }

}
