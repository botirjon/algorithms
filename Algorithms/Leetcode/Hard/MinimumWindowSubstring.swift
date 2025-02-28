//
//  MinimumWindowSubstring.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 27/02/25.
//

public final class MinimumWindowSubstring: Solution {
    
    public func minWindow(_ s: String, _ t: String) -> String {
        let s = Array(s)
        let t = Array(t)
        
        // Have many unique chars we need?
        var needMap = [Character: Int]()
        for c in t {
            needMap[c, default: 0] += 1
        }
        let need = needMap.count
        
        // Have many unique chars we have
        var haveMap = [Character: Int]()
        var have: Int = 0
        
        var res = (l: -1, r: -1)
        var resLength = Int.max
        
        var l = 0
        
        for (r, c) in s.enumerated() {
            haveMap[c, default: 0] += 1
            
            if needMap[c] != nil && haveMap[c] == needMap[c] {
                have += 1
            }
            
            while have == need {
                let length = r - l + 1
                if length < resLength {
                    res = (l, r)
                    resLength = length
                }
                
                let cl = s[l]
                haveMap[cl] = haveMap[cl].map { max($0-1, 0) }
                if needMap[cl] != nil && haveMap[cl, default: 0] < needMap[cl, default: 0] {
                    have -= 1
                }
                
                l += 1
            }
        }
        
        return resLength != Int.max ? String(s[res.l..<res.r+1]) : ""
    }
}

