//
//  WildcardMatching.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 27/02/25.
//

final public class WildcardMatching: Solution {
    
    public func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s)
        let p = Array(p)
        let n = s.count
        let m = p.count
        var dp = [[Bool]](repeating: [Bool](repeating: false, count: m+1), count: n+1)

        dp[0][0] = true

        for j in 1..<(m+1) {
            if p[j-1] == "*" {
                dp[0][j] = dp[0][j-1]
            }
        }
        
        for i in 1..<(n+1) {
            for j in 1..<(m+1) {
                if p[j-1] == "?" || s[i-1] == p[j-1] {
                    dp[i][j] = dp[i-1][j-1]
                } else if p[j-1] == "*" {
                    dp[i][j] = (dp[i-1][j] || dp[i][j-1])
                }
            }
        }

        return dp[n][m]
    }
}
